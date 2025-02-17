<?php

namespace Botble\CarRentals\Http\Controllers\Vendor;

use Botble\Base\Http\Controllers\BaseController;
use Botble\CarRentals\Facades\CarRentalsHelper;
use Botble\CarRentals\Models\Booking;
use Botble\CarRentals\Models\Car;
use Botble\CarRentals\Models\Customer;
use Botble\CarRentals\Models\Message;
use Botble\Media\Chunks\Exceptions\UploadMissingFileException;
use Botble\Media\Chunks\Handler\DropZoneUploadHandler;
use Botble\Media\Chunks\Receiver\FileReceiver;
use Botble\Media\Facades\RvMedia;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Validator;

class DashboardController extends BaseController
{
    public function index()
    {
        $this->pageTitle(__('Dashboard'));

        $vendorId = auth('customer')->id();

        $totalCars = Car::query()->where('author_type', Customer::class)->where('author_id', $vendorId)->count();
        $totalBookings = Booking::query()->where('vendor_id', $vendorId)->count();
        $totalMessages = Message::query()->where('vendor_id', $vendorId)->count();

        return CarRentalsHelper::view('vendor-dashboard.index', compact('totalCars', 'totalBookings', 'totalMessages'));
    }

    public function postUpload(Request $request)
    {
        $customer = auth('customer')->user();

        $uploadFolder = $customer->upload_folder;

        if (! RvMedia::isChunkUploadEnabled()) {
            $validator = Validator::make($request->all(), [
                'file.0' => ['required', 'image', 'mimes:jpg,jpeg,png'],
            ]);

            if ($validator->fails()) {
                return $this
                    ->httpResponse()
                    ->setError()
                    ->setMessage($validator->getMessageBag()->first());
            }

            $result = RvMedia::handleUpload(Arr::first($request->file('file')), 0, $uploadFolder);

            if ($result['error']) {
                return $this
                    ->httpResponse()
                    ->setError()
                    ->setMessage($result['message']);
            }

            return $this
                ->httpResponse()
                ->setData($result['data']);
        }

        try {
            // Create the file receiver
            $receiver = new FileReceiver('file', $request, DropZoneUploadHandler::class);
            // Check if the upload is success, throw exception or return response you need
            if ($receiver->isUploaded() === false) {
                throw new UploadMissingFileException();
            }
            // Receive the file
            $save = $receiver->receive();
            // Check if the upload has finished (in chunk mode it will send smaller files)
            if ($save->isFinished()) {
                $result = RvMedia::handleUpload($save->getFile(), 0, $uploadFolder);

                if (! $result['error']) {
                    return $this
                        ->httpResponse()
                        ->setData($result['data']);
                }

                return $this
                    ->httpResponse()
                    ->setError()
                    ->setMessage($result['message']);
            }
            // We are in chunk mode, lets send the current progress
            $handler = $save->handler();

            return response()->json([
                'done' => $handler->getPercentageDone(),
                'status' => true,
            ]);
        } catch (Exception $exception) {
            return $this
                ->httpResponse()
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    public function postUploadFromEditor(Request $request)
    {
        $customer = auth('customer')->user();

        $uploadFolder = $customer->upload_folder;

        return RvMedia::uploadFromEditor($request, 0, $uploadFolder);
    }
}
