
var Cart = {
	addToCart: function(productId, quantity) {
		// javascript object.
		var data = {
			"productId": productId,
			"quantity": quantity
		};
		// hàm bất đồng bộ là khi gọi không chạy theo thứ tự từ trên xuống
		$.ajax({
			url: "/cart/add",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(data),

			dataType: "json",
			success: function(jsonResult) {
				$("#cart-total").empty();
				$("#cart-total").html('mặt hàng (' + jsonResult.data + ')');
				addCart();
				alertify.notify('Thêm thành công!', 'success', 5, function(){  console.log('dismissed'); });
			},
			error: function(jqXhr, textStatus, errorMessage) { // error callback 

			}
		});
	}
};

var editCart = {
	EditCart: function(productId) {
		totalQuantities = '#product' + productId;
		var data = {
			"productId": productId,
			"quantity": $(totalQuantities).val(),
		};
		$.ajax({
			url: "/cart/edit",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(data),

			dataType: "json",
			success: function(jsonResult) {
				$("#cart-total").empty();
				$("#cart-total").html('mặt hàng (' + jsonResult.data + ')');
				editProductCart();
				addCart();
				totalPrice();
				checkoutProduct();
				alertify.notify('Sửa thành công!', 'success', 5, function(){  console.log('dismissed'); });
			},
			error: function(jqXhr, textStatus, errorMessage) { // error callback 

			}
		});
	}
};

var removeCart = {
	RemoveCart: function(productId) {
		var data = {
			"productId": productId,
		};
		$.ajax({
			url: "/cart/remove",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(data),

			dataType: "json",
			success: function(jsonResult) {
				$("#cart-total").empty();
				$("#cart-total").html('mặt hàng (' + jsonResult.data + ')');
				editProductCart();
				addCart();
				totalPrice();
				checkoutProduct();
				alertify.notify('Xóa thành công!', 'success', 5, function(){  console.log('dismissed'); });
			},
			error: function(jqXhr, textStatus, errorMessage) { // error callback 

			}
		});
	}
};

function editProductCart() {
	$.ajax({
		url: "/getcart",
		type: "get",
		success: function(jsonResult) {
			$('#list-cart-items').empty();
			$('#list-cart-items').html(jsonResult);
		},
		error: function(e) { // error callback 
			alert('Error: ' + e);
		}
	});
}

function addCart() {
	$.ajax({
		url: "/cart/woocommerce",
		type: "get",
		success: function(jsonResult) {
			$("#cart-dropdown").empty();
			$("#cart-dropdown").html(jsonResult);
		},
		error: function(e) { // error callback 
			alert('Error: ' + e);
		}
	});
}

function totalPrice() {
	$.ajax({
		url: "/cart/totalprice",
		type: "get",
		success: function(jsonResult) {
			$("#total-price").empty();
			$("#total-price").html(jsonResult);
		},
		error: function(e) { // error callback 
			alert('Error: ' + e);
		}
	});
}

function checkoutProduct() {
	$.ajax({
		url: "/cart/checkoutproduct",
		type: "get",
		success: function(jsonResult) {
			$("#collapsesix").empty();
			$("#collapsesix").html(jsonResult);
		},
		error: function(e) { // error callback 
			alert('Error: ' + e);
		}
	});
}

function removeSaleOrder(saleOrderId) {
	$.ajax({
		url: "/delete/saleorder/" + saleOrderId,
		type: "get",
		success: function(jsonResult) {
			$("#accordion").empty();
			$("#accordion").html(jsonResult);
			alertify.alert('Thông báo', "Hủy đơn hàng thành công" , function(){ alertify.success("Hủy đơn hàng thành công"); });
		},
		error: function(e) { // error callback 
			alert('Error: ' + e);
		}
	});
}
