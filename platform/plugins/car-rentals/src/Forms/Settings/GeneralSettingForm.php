<?php

namespace Botble\CarRentals\Forms\Settings;

use Botble\Base\Forms\FieldOptions\HtmlFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\HtmlField;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\TextField;
use Botble\CarRentals\Http\Requests\Settings\GeneralSettingRequest;
use Botble\Setting\Forms\SettingForm;

class GeneralSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('plugins/car-rentals::settings.general.title'))
            ->setSectionDescription(trans('plugins/car-rentals::settings.general.description'))
            ->setFormOptions([
                'class' => 'main-setting-form',
            ])
            ->setValidatorClass(GeneralSettingRequest::class)
            ->add(
                'enabled_multi_vendor',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->value(setting('car_rentals_enabled_multi_vendor', false))
                    ->label(trans('plugins/car-rentals::settings.general.forms.enabled_multi_vendor'))
                    ->helperText(trans('plugins/car-rentals::settings.general.forms.enabled_multi_vendor_helper'))
            )
            ->add(
                'enabled_rental_booking',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->value(setting('car_rentals_enabled_rental_booking', true))
                    ->label(trans('plugins/car-rentals::settings.general.forms.enabled_car_rental_feature'))
                    ->helperText(trans('plugins/car-rentals::settings.general.forms.enabled_car_rental_feature_helper'))
            )
            ->add(
                'booking_number_format_description',
                HtmlField::class,
                HtmlFieldOption::make()
                    ->label(trans('plugins/car-rentals::settings.general.forms.booking_number_format.title'))
                    ->content(
                        sprintf(
                            '<p class="text-muted small">%s</p>',
                            trans('plugins/car-rentals::settings.general.forms.booking_number_format.description', ['format' => sprintf(
                                '<span class="sample-booking-number-prefix">%s</span>%s' .
                                '<span class="sample-booking-number-suffix">%s</span>',
                                setting('booking_number_prefix') ? setting('booking_number_prefix') . '-' : '',
                                config('plugins.car-rentals.car-rentals.default_number_start_number'),
                                setting('booking_number_suffix') ? '-' . setting('booking_number_suffix') : '',
                            )])
                        )
                    )
            )
            ->addOpenFieldset('booking_number_format_section', ['class' => 'form-fieldset d-flex gap-3'])
            ->add(
                'booking_number_prefix',
                TextField::class,
                TextFieldOption::make()
                    ->wrapperAttributes(['class' => 'position-relative w-full'])
                    ->label(trans('plugins/car-rentals::settings.general.forms.booking_number_format.start_with'))
                    ->value(setting('car_rentals_booking_number_prefix'))
            )
            ->add(
                'booking_number_suffix',
                TextField::class,
                TextFieldOption::make()
                    ->wrapperAttributes(['class' => 'position-relative w-full'])
                    ->label(trans('plugins/car-rentals::settings.general.forms.booking_number_format.end_with'))
                    ->value(setting('car_rentals_booking_number_suffix'))
            )
            ->addCloseFieldset('booking_number_format_section');
    }
}
