<?php

namespace Botble\CarRentals\Forms\Settings;

use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\CarRentals\Facades\CarRentalsHelper;
use Botble\CarRentals\Http\Requests\Settings\CustomerSettingRequest;
use Botble\Setting\Forms\SettingForm;

class CustomerSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('plugins/car-rentals::settings.customer.title'))
            ->setSectionDescription(trans('plugins/car-rentals::settings.customer.description'))
            ->setFormOptions([
                'class' => 'main-setting-form',
            ])
            ->setValidatorClass(CustomerSettingRequest::class)
            ->add(
                'enabled_customer_registration',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->value(CarRentalsHelper::isEnabledCustomerRegistration())
                    ->label(trans('plugins/car-rentals::settings.customer.forms.enabled_customer_registration'))
            )
            ->add(
                'verify_customer_email',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/car-rentals::settings.customer.forms.verify_customer_email'))
                    ->helperText(trans('plugins/car-rentals::settings.customer.forms.verify_customer_email_helper'))
                    ->value(CarRentalsHelper::isEnabledEmailVerification())
            );
    }
}
