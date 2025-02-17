<?php

namespace Botble\CarRentals\Http\Controllers\Vendor;

use Botble\Base\Http\Controllers\BaseController;
use Botble\CarRentals\Forms\Vendor\SettingForm;
use Botble\CarRentals\Http\Requests\Vendor\SettingRequest;
use Botble\CarRentals\Models\Customer;

class SettingController extends BaseController
{
    public function index()
    {
        $this->pageTitle(__('Settings'));

        /**
         * @var Customer $customer
         */
        $customer = auth('customer')->user();

        return SettingForm::createFromModel($customer)->renderForm();
    }

    public function update(SettingRequest $request)
    {
        /**
         * @var Customer $customer
         */
        $customer = auth('customer')->user();

        SettingForm::createFromModel($customer)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('car-rentals.vendor.settings.index'))
            ->withUpdatedSuccessMessage();
    }
}
