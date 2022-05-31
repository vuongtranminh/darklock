<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Coda - HTML Bootstrap Admin Template</title>
<meta content="Coda" name="keywords">
<meta content="" name="description">
<meta content="" name="author">
<meta content="width=device-width,initial-scale=1" name="viewport">
<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/back-end/common/variables.jsp"></jsp:include>
<!-- Favicon -->
<link href="${base }/assets/images/favicon.ico" rel="shortcut icon">
<!-- Plugins CSS -->
<link href="${base }/assets/css/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${base }/assets/css/dragula.min.css" rel="stylesheet">
<link href="${base }/assets/css/icofont.min.css" rel="stylesheet">
<link href="${base }/assets/css/rating-theme.css" rel="stylesheet">
<link href="${base }/assets/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link href="${base }/assets/css/simple-line-icons.css" rel="stylesheet">
<link href="${base }/assets/css/selects.min.css" rel="stylesheet">
<link href="${base }/assets/css/typehead.min.css" rel="stylesheet">
<link href="${base }/assets/css/chartjs.css" rel="stylesheet">
<!-- Theme CSS -->
<link href="${base }/assets/css/style_log_in.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/alertify.min.css">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/themes/default.min.css">
</head>

<body class="auth layout">
	<!-- Loader -->
	<div class="overlay"></div>
	<div class="loader loader-4">
		<span></span> <span></span> <span></span> <span></span> <span></span>
	</div>
	<!-- end Loader -->
	<div class="log-in-page">
		<div class="card">
			<div class="card-header">Sign in with your app id to continue</div>
			<div class="card-body">
				<form action="${base }/admin_login" method="post">
					<c:if test="${not empty param.login_error}">
						<div class="alert alert-danger" role="alert">Đăng nhập không
							thành công, vui lòng thử lại.</div>
					</c:if>
					<div class="form-group">
						<input class="form-control" name="username" type="text"
							placeholder="Login">
					</div>
					<div class="form-group">
						<input class="form-control" name="password" type="password"
							placeholder="Password">
					</div>
					<div class="form-group">
						<div class="custom-control custom-checkbox mb-3">
							<input type="checkbox" name="remember_admin"
								class="custom-control-input" id="customCheck1"> <label
								class="custom-control-label" for="customCheck1">Keep me
								signed in</label>
						</div>
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<button type="submit" class="btn btn-block btn-primary">Login</button>
					<div class="forgot-box">
						<a href="sign-up.html">Sign Up</a> <span class="divider"></span> <a
							href="#" class="forgot-password">Forgot password?</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="${base }/assets/js/lib/jquery-3.3.1.min.js"></script>
<script src="${base }/assets/js/lib/jquery-migrate-1.4.1.min.js"></script>
<script src="${base }/assets/js/lib/jquery.barrating.min.js"></script>
<script src="${base }/assets/js/lib/popper.min.js"></script>
<script src="${base }/assets/js/lib/bootstrap.min.js"></script>
<script src="${base }/assets/js/lib/typehead.min.js"></script>
<script src="${base }/assets/js/lib/echarts.min.js"></script>
<script src="${base }/assets/js/lib/jquery.dataTables.min.js"></script>
<script src="${base }/assets/js/lib/morris.min.js"></script>
<script src="${base }/assets/js/lib/raphael.min.js"></script>
<script src="${base }/assets/js/lib/dragula.js"></script>
<script src="${base }/assets/js/lib/chart.min.js"></script>
<script src="${base }/assets/js/lib/select.js"></script>
<script src="${base }/assets/js/main.js"></script>
<script src="${base }/alertify-js/alertify.min.js"></script>
<script src="${base }/js/forgot_password.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBSvo0x8v3C6aFWcSi2zooOC9tqGCOqCj4&callback=initMap"
	async defer="defer"></script>

</html>