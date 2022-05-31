$('input[name=\'payment_address\']').on('change', function() {
    if (this.value == 'new') {
        $('#payment-existing').hide();
        $('#payment-new').show();
    } else {
        $('#payment-existing').show();
        $('#payment-new').hide();
    }
});
$('input[name=\'shipping_address\']').on('change', function() {
    if (this.value == 'new') {
        $('#shipping-existing').hide();
        $('#shipping-new').show();
    } else {
        $('#shipping-existing').show();
        $('#shipping-new').hide();
    }
});