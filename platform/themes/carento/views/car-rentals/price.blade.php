<div class="card-price">
    <p>
        <span class="heading-6 neutral-1000 car-price-text">{{ format_price($car->rental_rate) }}</span><span class="mx-1">/</span><span class="neutral-500 car-rental-period-text">{{ $car->rental_type->shortLabel() }}</span>
    </p>
</div>
