<?php

namespace Botble\CarRentals\Http\Controllers\Settings;

use Botble\CarRentals\Forms\Settings\GeneralSettingForm;
use Botble\CarRentals\Http\Requests\Settings\GeneralSettingRequest;

class GeneralSettingController extends SettingController
{
    public function edit()
    {
        $this->pageTitle(trans('plugins/car-rentals::settings.general.title'));

        return GeneralSettingForm::create()->renderForm();
    }

    public function update(GeneralSettingRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
