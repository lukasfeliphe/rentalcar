@if (is_plugin_active('car-rentals') && ($currencies = get_all_currencies()))
    <div>{{ __('Currency') }}</div>
    <ul class="mobile-menu font-heading" style="margin-top: 10px !important;">
        <li class="has-children">
            <span class="menu-expand"><i class="arrow-small-down"></i></span>
            <a href="">{{ get_application_currency()->title }}</a>

            <ul class="sub-menu">
                @foreach ($currencies as $currency)
                    @continue($currency->getKey() === get_application_currency()->getKey())
                    <li>
                        <a class="text-sm-medium" href="{{ route('public.currency.switch', $currency->title) }}">{{ $currency->title }}</a>
                    </li>
                @endforeach
            </ul>
        </li>
    </ul>
@endif

