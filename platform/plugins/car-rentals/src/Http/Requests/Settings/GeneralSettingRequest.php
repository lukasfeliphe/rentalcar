<?php

namespace Botble\CarRentals\Http\Requests\Settings;

use Botble\Base\Rules\OnOffRule;
use Botble\Support\Http\Requests\Request;

class GeneralSettingRequest extends Request
{
    public function rules(): array
    {
        return [
            'enabled_multi_vendor' => new OnOffRule(),
            'enabled_rental_booking' => new OnOffRule(),
            'booking_number_prefix' => ['nullable', 'string'],
            'booking_number_suffix' => ['nullable', 'string'],
        ];
    }
}
