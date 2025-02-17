<?php

return [
    'name' => 'Car Rentals',
    'currency' => [
        'title' => 'Currency',
        'description' => 'Manage currency settings for Car Rentals.',
    ],
    'general' => [
        'title' => 'General',
        'description' => 'Manage general settings for Car Rentals.',
        'forms' => [
            'enabled_multi_vendor' => 'Enable multi-vendor',
            'enabled_multi_vendor_helper' => 'When it is enabled, visitor can register as a vendor and submit their cars to your site for sale/rent.',
            'enabled_car_rental_feature' => 'Enable car rental booking',
            'enabled_car_rental_feature_helper' => 'When it is enabled, the car rental booking feature will be available on the website.',
            'booking_number_format' => [
                'title' => 'Booking Number Format (optional)',
                'description' => 'The default booking number starts at a specific number. You can customize the starting and ending numbers for the booking number. For example, the booking number will be displayed as #:format.',
                'start_with' => 'Starting Number',
                'end_with' => 'Ending Number',
            ],
        ],
    ],
    'review' => [
        'title' => 'Review',
        'description' => 'Manage review settings for Car Rentals.',
        'forms' => [
            'enabled_review' => 'Enable review?',
        ],
    ],
    'car_filter' => [
        'title' => 'Car Filter',
        'description' => 'Manage car filter settings for Car Rentals.',
        'forms' => [
            'filter_cars_by' => 'Filter cars by:',
            'locations' => 'Locations',
            'prices' => 'Prices',
            'categories' => 'Categories',
            'colors' => 'Colors',
            'types' => 'Types',
            'transmissions' => 'Transmissions',
            'fuels' => 'Fuels',
            'review_scores' => 'Review scores',
            'addresses' => 'Addresses',
            'vehicle_condition' => 'Vehicle condition',
            'enable_car_filter' => 'Enable car filter?',
        ],
    ],
    'customer' => [
        'title' => 'Customer',
        'description' => 'View and update your customer settings',
        'forms' => [
            'enabled_customer_registration' => 'Enable customer registration?',
            'verify_customer_email' => 'Verify customer’s email',
            'verify_customer_email_helper' => "When it's enabled, a verification link will be sent to customer's email, customers need to click on this link to verify their email before they can log in.",
        ],
    ],
    'invoice' => [
        'title' => 'Invoice',
        'description' => 'Manage invoice settings for Car Rentals.',
        'forms' => [
            'company_name' => 'Company name',
            'company_address' => 'Company address',
            'company_email' => 'Company email',
            'company_phone' => 'Company phone',
            'company_logo' => 'Company logo',
            'using_custom_font_for_invoice' => 'Using custom font for invoice?',
            'invoice_font_family' => 'Invoice font family (Only work for Latin language)',
            'enable_invoice_stamp' => 'Enable invoice stamp?',
            'invoice_support_arabic_language' => 'Support Arabic language in invoice?',
            'invoice_code_prefix' => 'Invoice code prefix',
            'add_language_support' => 'Add language support',
            'only_latin_languages' => 'Only Latin languages',
        ],
    ],
    'invoice_template' => [
        'title' => 'Invoice Template',
        'description' => 'Settings for Invoice template',
        'setting_content' => 'Content',
        'forms' => [
            'confirm_reset' => 'Confirm reset invoice template?',
            'confirm_message' => 'Do you really want to reset this invoice template to default?',
            'continue' => 'Continue',
        ],
    ],
    'email' => [
        'templates' => [
            'booking_confirm' => [
                'booking_confirmation_title' => 'Car Rental Booking Confirmation',
                'booking_confirmation_description' => 'Send email to customer when their booking is confirmed',
                'booking_code' => 'Booking code',
                'customer_name' => 'Customer name',
                'customer_phone' => 'Customer phone',
                'customer_email' => 'Customer email',
                'payment_method' => 'Payment method',
                'car_name' => 'Car name',
                'pickup_address' => 'Pickup address',
                'return_address' => 'Return address',
                'rental_start_date' => 'Rental start date',
                'rental_end_date' => 'Rental end date',
                'amount' => 'Amount',
                'note' => 'Note',
            ],
        ],
    ],
    'tax' => [
        'name' => 'Taxes',
        'description' => 'View and update your taxes settings',
        'tax_setting' => 'Tax settings',
        'tax_setting_description' => 'Configure tax settings',
        'tax_management' => 'Taxes management',
        'tax_management_description' => 'View and manage your taxes',
        'forms' => [
            'enable_tax' => 'Enable taxes?',
            'apply_tax' => 'Apply taxes',
        ],
    ],
];
