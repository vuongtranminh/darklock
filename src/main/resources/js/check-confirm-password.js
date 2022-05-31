/**
 * 
 */

$('#password2, #confirm-password').on('keyup', function() {
	if ($('#password2').val() != $('#confirm-password').val()) {
		$('#password2, #confirm-password').css('border', '1px solid red');
	} else
		$('#password2, #confirm-password').css('border', '1px solid green');
});

var createAccount = {
	createAccount: function() {
		var data = {
			"username": $('#username').val(),
			"email": $('#email').val(),
			"password": $('#password2').val(),
		};
		if ($('#password2').val() == $('#confirm-password').val()) {
			$.ajax({
				url: "/getaccount",
				type: "POST",
				contentType: "application/json",
				data: JSON.stringify(data),

				dataType: "json",
				success: function(jsonResult) {
					if (jsonResult.data == "Đăng ký thành công!") {
						// chuyển qua tab login
						$("#login-form").delay(100).fadeIn(100);
						$("#register-form").fadeOut(100);
						$('#register-form-link').removeClass('active');
						$(this).addClass('active');
						// hiển thị thành công
						alertify.notify(jsonResult.data, 'success', 5, function() { console.log('dismissed'); });
						//tự điền vào login
						$('#username1').val($('#username').val());
						$('#password').val($('#password2').val());
						// clear singup
						$('#username').val('');
						$('#email').val('');
						$('#password2').val('');
						$('#confirm-password').val('');
					} else {
						alertify.notify(jsonResult.data, 'error', 5, function() { console.log('dismissed'); });
					}

				},
				error: function(jqXhr, textStatus, errorMessage) {
				}
			});
		} else {
			alertify.notify('Mật khẩu không trùng khớp', 'error', 5, function() { console.log('dismissed'); });
			return;
		}
	}
};