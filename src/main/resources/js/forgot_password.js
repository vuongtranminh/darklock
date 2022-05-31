$('.forgot-password').click(function(){
			alertify.prompt( 'Quên mật khẩu', 'Vui lòng nhập email đăng ký', ''
		               , function(evt, value) {
				
				var data = {};
				data["email"] = value;
				
				$.ajax({
					url: "/forgot_password",
					type: "post",
					contentType: "application/json",
					data: JSON.stringify(data),
					
					dataType: "json",
					success: function(jsonResult) {
						if(jsonResult.data ==  "We have sent a reset password link to your email. Please check.") {
							alertify.alert('Thông báo', jsonResult.data , function(){ alertify.success(jsonResult.data); });
						} else {
							alertify.alert('Thông báo', jsonResult.data , function(){ alertify.error(jsonResult.data); });
						}
					},
					error: function (e) { // error callback 
				        alert('Error: ' + e);
				    }
				});
				
		            		   }
		               , function() { alertify.error('Cancel') });
		});