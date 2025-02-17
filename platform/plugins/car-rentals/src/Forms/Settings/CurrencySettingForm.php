<?php

namespace Botble\CarRentals\Forms\Settings;

use Botble\Base\Facades\Assets;
use Botble\Base\Forms\FieldOptions\HtmlFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\Fields\HtmlField;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\CarRentals\Http\Requests\Settings\CurrencySettingRequest;
use Botble\CarRentals\Models\Currency;
use Botble\Setting\Forms\SettingForm;

class CurrencySettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        Assets::addScripts(['jquery-ui'])
            ->addScriptsDirectly('vendor/core/plugins/car-rentals/js/currencies.js')
            ->addStylesDirectly('vendor/core/plugins/car-rentals/css/currencies.css');

        $currencies = Currency::query()
            ->orderBy('order')
            ->get()
            ->all();

        $this
            ->setSectionTitle(trans('plugins/car-rentals::settings.currency.title'))
            ->setSectionDescription(trans('plugins/car-rentals::settings.currency.description'))
            ->setFormOptions([
                'class' => 'main-setting-form',
            ])
            ->contentOnly()
            ->setValidatorClass(CurrencySettingRequest::class)
            ->add(
                'enable_auto_detect_visitor_currency',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/car-rentals::currency.enable_auto_detect_visitor_currency'))
                    ->value(setting('car_rentals_enable_auto_detect_visitor_currency', false))
                    ->helperText(trans('plugins/car-rentals::currency.auto_detect_visitor_currency_description'))
            )
            ->add(
                'add_space_between_price_and_currency',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->value(setting('car_rentals_add_space_between_price_and_currency', false))
                    ->label(trans('plugins/car-rentals::currency.add_space_between_price_and_currency'))
            )
            ->add(
                'thousands_separator',
                SelectField::class,
                SelectFieldOption::make()
                    ->selected(setting('car_rentals_thousands_separator', ','))
                    ->label(trans('plugins/car-rentals::currency.thousands_separator'))
                    ->choices([
                        ',' => trans('plugins/car-rentals::currency.separator_comma'),
                        '.' => trans('plugins/car-rentals::currency.separator_period'),
                        'space' => trans('plugins/car-rentals::currency.separator_space'),
                    ])
            )
            ->add(
                'data_currencies',
                HtmlField::class,
                HtmlFieldOption::make()
                    ->content(view('plugins/car-rentals::settings.partials.currencies.data-currency-fields', compact('currencies')))
            )
            ->add(
                'currency_table',
                HtmlField::class,
                HtmlFieldOption::make()
                    ->content(view('plugins/car-rentals::settings.partials.currencies.currency-table'))
            );
    }
}
