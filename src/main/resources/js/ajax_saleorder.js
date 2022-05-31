function updateSaleOrderConfirm(saleOrderId) {
				$.ajax({
					url: "/admin/saleorder/confirm/" + saleOrderId,
					type: "get",
					success: function(jsonResult) {
						$("#saleorder_detail").empty();
						$("#saleorder_detail").html(jsonResult);
						alertify.alert('Thông báo', "Xác nhận đơn hàng thành công" , function(){ alertify.success("Xác nhận đơn hàng thành công"); });
					},
					error: function(e) { // error callback 
						alert('Error: ' + e);
					}
				});
			}
			function updateSaleOrderDelivery(saleOrderId) {
				$.ajax({
					url: "/admin/saleorder/delivery/" + saleOrderId,
					type: "get",
					success: function(jsonResult) {
						$("#saleorder_detail").empty();
						$("#saleorder_detail").html(jsonResult);
						alertify.alert('Thông báo', "Xác nhận giao đơn hàng thành công" , function(){ alertify.success("Xác nhận giao đơn hàng thành công"); });
					},
					error: function(e) { // error callback 
						alert('Error: ' + e);
					}
				});
			}