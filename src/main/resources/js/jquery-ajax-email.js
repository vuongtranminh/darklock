function saveEmail() {
	  	// javascript object.
			var data = {}; // khai báo kiểu object
			data["email"] = $("#email_subcribe").val(); // data["thuộc tính cần lấy ở class khai báo các thuộc tính"]
			
			$.ajax({
				url: "/getEmail",
				type: "post",
				contentType: "application/json",
				data: JSON.stringify(data), // nhận dữ liệu từ object data // data: JSON.stringify(tenObjectKhaiBaoTren)
				
				dataType: "json", // trả về kiểu json
				success: function(jsonResult) {
					if(jsonResult.data ==  "Subcribe thành công!") { // các câu điều kiện if else
						alertify.alert('Thông báo', jsonResult.data , function(){ alertify.success(jsonResult.data); });
					} else {
						alertify.alert('Thông báo', jsonResult.data , function(){ alertify.error(jsonResult.data); });
					}
					$("#email_subcribe").val('');
				},
				error: function (e) { // error callback 
			        alert('Error: ' + e);
			    }
			});
		}