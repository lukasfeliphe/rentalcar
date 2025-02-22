@php
    $logo = theme_option('car_rental_logo_in_the_checkout_page') ?: theme_option('logo');
@endphp

@if ($logo)
    <div class="checkout-logo">
        <a
            href="{{ BaseHelper::getHomepageUrl() }}"
            title="{{ theme_option('site_title') }}"
        >
            <img
                src="{{ RvMedia::getImageUrl($logo) }}"
                alt="{{ theme_option('site_title') }}"
            />
        </a>
    </div>
    <hr class="border-dark-subtle" />
@endif
