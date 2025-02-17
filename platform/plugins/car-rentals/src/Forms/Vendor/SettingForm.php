<?php

namespace Botble\CarRentals\Forms\Vendor;

use Botble\Base\Forms\FieldOptions\RadioFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\Fields\RadioField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Supports\Language;
use Botble\CarRentals\Http\Requests\Vendor\SettingRequest;
use Botble\CarRentals\Models\Customer;
use Illuminate\Support\Facades\App;

class SettingForm extends FormAbstract
{
    public function setup(): void
    {
        $languages = Language::getAvailableLocales();

        $this
            ->setupModel(new Customer())
            ->setValidatorClass(SettingRequest::class)
            ->setUrl(route('car-rentals.vendor.settings.update'))
            ->setMethod('PUT')
            ->template('plugins/car-rentals::themes.vendor-dashboard.cars.form')
            ->when(count($languages) > 1, function (FormAbstract $form) use ($languages): void {
                $languages = collect($languages)
                    ->pluck('name', 'locale')
                    ->map(fn ($item, $key) => $item . ' - ' . $key)
                    ->all();

                $form
                    ->add(
                        'locale',
                        SelectField::class,
                        SelectFieldOption::make()
                            ->label(__('Language'))
                            ->choices($languages)
                            ->selected($form->getModel()->getMetaData('locale', 'true') ?: App::getLocale())
                            ->metadata()
                    );
            });
    }
}
