{{ header }}

<div class="bb-main-content">
    <table class="bb-box" cellpadding="0" cellspacing="0">
        <tbody>
        <tr>
            <td class="bb-content bb-pb-0" align="center">
                <table class="bb-icon bb-icon-lg bb-bg-blue" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td valign="middle" align="center">
                                <img src="{{ 'shopping-cart' | icon_url }}" class="bb-va-middle" width="40" height="40" alt="Icon" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <h1 class="bb-text-center bb-m-0 bb-mt-md">Car Rental Booking Confirmation</h1>
            </td>
        </tr>
        <tr>
            <td class="bb-content">
                <p>Dear {{ customer_name }},</p>
                <div>We are delighted to inform you that your car rental booking has been successfully confirmed!</div>
            </td>
        </tr>
        <tr>
            <td class="bb-content bb-pt-0">
                <table class="bb-row bb-mb-md" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="bb-bb-col">
                                <h4>Customer Information</h4>
                                <div>Name: <strong>{{ customer_name }}</strong></div>
                                {% if customer_phone %}
                                    <div>Phone: <strong>{{ customer_phone }}</strong></div>
                                {% endif %}
                                {% if customer_email %}
                                    <div>Email: <strong>{{ customer_email }}</strong></div>
                                {% endif %}
                            </td>
                        </tr>
                    </tbody>
                </table>

                <table class="bb-row bb-mb-md" cellpadding="0" cellspacing="0">
                    <tbody>
                    <tr>
                        <td class="bb-bb-col">
                            <h4>Booking Information</h4>
                            <div>Car Model: <strong>{{ car_name }}</strong></div>
                            <div>Start Date: <strong>{{ rental_start_date }}</strong></div>
                            <div>End Date: <strong>{{ rental_end_date }}</strong></div>
                            <div>Pickup Address: <strong>{{ pickup_address }}</strong></div>
                            <div>Return Address: <strong>{{ return_address }}</strong></div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td class="bb-content bb-pt-0">
                {% if order_note %}
                    <div>Note: {{ order_note }}</div>
                {% endif %}
            </td>
        </tr>
        <tr>
            <td class="bb-content bb-border-top">
                <table class="bb-row bb-mb-md" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="bb-bb-col">
                                <h4 class="bb-m-0">Order number</h4>
                                <div>{{ booking_code }}</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                {% if payment_method %}
                    <table class="bb-row bb-mb-md" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                            <td class="bb-col">
                                <h4 class="bb-m-0">Payment Method</h4>
                                <div>
                                    {{ payment_method }}
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                {% endif %}
            </td>
        </tr>
        </tbody>
    </table>
</div>

{{ footer }}
