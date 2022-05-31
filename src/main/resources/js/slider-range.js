/*function debounce(fn, delay, immediate) {
    let timeout;

    return function executedFn() {
        let context = this; // "this" context của executedFn
        let args = arguments; // "arguments" của fn

        let later = function() {
            timeout = null;
            if (!immediate) fn.apply(context, args);
        };

        let callNow = immediate && !timeout;

        clearTimeout(timeout);

        timeout = setTimeout(later, delay);

        if (callNow) fn.apply(context, args);
    }
}*/

$(function() {
	$("#slider-range").slider({
		range: true,
		min: 0,
		max: 15000000,
		values: [1000000, 14000000],
		slide: function(event, ui) {
			var min = ui.values[0];
			var max = ui.values[1];
			$("#amount").val((ui.values[0] / 1000000).toFixed(1) + "tr" + " - " + (ui.values[1] / 1000000).toFixed(1) + "tr");
			$.ajax({
				url: "/danhmuc/" + min + "/" + max,
				type: "get",
				success: function(jsonResult) {
					$('#tableProductList').empty();
					$('#tableProductList').html(jsonResult);
				},
				error: function(e) { // error callback 
					alert('Error: ' + e);
				}
			});
		}
	});
	$("#amount").val(($("#slider-range").slider("values", 0) / 1000000).toFixed(1) + "tr" +
		" - " + ($("#slider-range").slider("values", 1) / 1000000).toFixed(1) + "tr");
});

const formatter = new Intl.NumberFormat('vn-VN', {
  style: 'currency',
  currency: 'VND',
  minimumFractionDigits: 1
})