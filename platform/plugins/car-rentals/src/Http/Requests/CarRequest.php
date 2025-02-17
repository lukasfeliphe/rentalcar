<?php

namespace Botble\CarRentals\Http\Requests;

use Botble\Base\Rules\OnOffRule;
use Botble\CarRentals\Enums\CarRentalTypeEnum;
use Botble\CarRentals\Enums\CarStatusEnum;
use Botble\CarRentals\Models\CarCategory;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class CarRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string'],
            'description' => ['nullable', 'max:1000'],
            'content' => ['nullable', 'string', 'max:10000'],
            'make_id' => ['nullable', 'int'],
            'vehicle_type_id' => ['nullable', 'int'],
            'transmission_id' => ['nullable', 'int'],
            'fuel_type_id' => ['nullable', 'int'],
            'year' => ['nullable', 'int'],
            'number_of_seats' => ['nullable', 'int', 'min:0'],
            'number_of_doors' => ['nullable', 'int', 'min:0'],
            'rental_rate' => ['required', 'numeric', 'min:0'],
            'rental_type' => ['required', 'string', Rule::in(CarRentalTypeEnum::values())],
            'license_plate' => ['nullable', 'string'],
            'vin' => ['nullable', 'string'],
            'tags' => ['nullable', 'string'],
            'images' => ['nullable', 'array'],
            'status' => ['required', 'string', Rule::in(CarStatusEnum::values())],
            'pick_address_id' => ['required', 'int'],
            'categories' => ['sometimes', 'array'],
            'categories.*' => ['sometimes', Rule::exists((new CarCategory())->getTable(), 'id')],
            'is_same_drop_off' => ['boolean'],
            'return_address_id' => ['int', Rule::requiredIf(fn () => ! $this->is_same_drop_off)],
            'is_featured' => ['nullable', 'boolean'],
            'colors' => ['nullable', 'string'],
            'is_used' => new OnOffRule(),
        ];
    }
}
