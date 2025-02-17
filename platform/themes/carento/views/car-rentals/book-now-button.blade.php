@if (CarRentalsHelper::isRentalBookingEnabled())
    <div class="card-button"><a class="btn btn-gray" href="{{ $car->url }}">{{ __('Book Now') }}</a></div>
@endif
