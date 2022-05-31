<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">
<title>Dark look E-commerce Bootstrap Template</title>
<!-- =====  SEO MATE  ===== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="distribution" content="global">
<meta name="revisit-after" content="2 Days">
<meta name="robots" content="ALL">
<meta name="rating" content="8 YEARS">
<meta name="Language" content="en-us">
<meta name="GOOGLEBOT" content="NOARCHIVE">
<!-- =====  MOBILE SPECIFICATION  ===== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>
<!-- =====  CSS  ===== -->
<link rel="stylesheet" type="text/css"
	href="${base }/fontawesome-free-5.15.3-web/css/all.css">
<link rel="stylesheet" type="text/css" href="${base }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${base }/css/style-login.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/alertify.min.css">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/themes/default.min.css">
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/apple-touch-icon-114x114.png">
</head>

<body>
	<!-- =====  LODER  ===== -->
	<div class="loder"></div>
	<div class="wrapper">
		<!-- =====  HEADER START  ===== -->
		<jsp:include page="/WEB-INF/views/front-end/common/html/header.jsp"></jsp:include>
		<!-- =====  HEADER END  ===== -->
		<!-- =====  CONTAINER START  ===== -->
		<div class="container mt_30">
			<div class="row ">
				<div id="column-left" class="col-sm-4 col-lg-3 hidden-xs">
					<div id="category-menu" class="navbar collapse in mb_40"
						aria-expanded="true" style="" role="button">
						<div class="nav-responsive">
							<div class="heading-part">
								<h2 class="main_title">Top category</h2>
							</div>
							<ul class="nav  main-navigation collapse in">
								<li><a href="#">Appliances</a></li>
								<li><a href="#">Mobile Phones</a></li>
								<li><a href="#">Tablet PC & Accessories</a></li>
								<li><a href="#">Consumer Electronics</a></li>
								<li><a href="#">Computers & Networking</a></li>
								<li><a href="#">Electrical & Tools</a></li>
								<li><a href="#">Apparel</a></li>
								<li><a href="#">Bags & Shoes</a></li>
								<li><a href="#">Toys & Hobbies</a></li>
								<li><a href="#">Watches & Jewelry</a></li>
								<li><a href="#">Home & Garden</a></li>
								<li><a href="#">Health & Beauty</a></li>
								<li><a href="#">Outdoors & Sports</a></li>
							</ul>
						</div>
					</div>
					<div class="left_banner left-sidebar-widget mt_30 mb_40">
						<a href="#"><img src="${base }/images/left1.jpg"
							alt="Left Banner" class="img-responsive" /></a>
					</div>
				</div>
				<div class="col-sm-8 col-lg-9 mtb_20">
					<!-- contact  -->
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="panel-login panel">
								<div class="panel-heading">
									<div class="row mb_20">
										<div class="col-xs-6">
											<a href="#" class="active" id="login-form-link">Đăng nhập</a>
										</div>
										<div class="col-xs-6">
											<a href="#" id="register-form-link">Đăng ký</a>
										</div>
									</div>
									<hr>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-12">
											<form id="login-form" action="${base }/user_login" method="post">
												<c:if test="${not empty param.login_error}">
													<div class="alert alert-danger" role="alert">Đăng
														nhập không thành công, vui lòng thử lại.</div>
												</c:if>
												<div class="form-group">
													<input type="text" name="username" id="username1"
														tabindex="1" class="form-control"
														placeholder="Tên tài khoản" value="">
												</div>
												<div class="form-group">
													<input type="password" name="password" id="password"
														tabindex="2" class="form-control" placeholder="Mật khẩu">
												</div>
												<div class="form-group text-center">
													<input type="checkbox" tabindex="3" class=""
														name="remember_user" id="remember"> <label
														for="remember"> Nhớ tài khoản</label>
												</div>
												<input type="hidden" name="${_csrf.parameterName}"
													value="${_csrf.token}" />
												<div class="form-group">
													<div class="row">
														<div class="col-sm-6 col-sm-offset-3">
															<input type="submit" name="login-submit"
																id="login-submit" tabindex="4"
																class="form-control btn btn-login" value="Đăng nhập">
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-lg-12">
															<div class="text-center">
																<a href="#" tabindex="5" class="forgot-password">Quên
																	mật khẩu?</a>
															</div>
														</div>
													</div>
												</div>
											</form>
											<form id="register-form" method="post">
												<div class="form-group">
													<input type="text" name="username" id="username"
														tabindex="1" class="form-control"
														placeholder="Tên tài khoản" value="" />
												</div>
												<div class="form-group">
													<input type="email" name="email" id="email" tabindex="1"
														class="form-control" placeholder="Địa chỉ Email" value="" />
												</div>
												<div class="form-group">
													<input type="password" name="password" id="password2"
														tabindex="2" class="form-control" placeholder="Mật khẩu" />
												</div>
												<div class="form-group">
													<input type="password" name="confirmPassword"
														id="confirm-password" tabindex="2" class="form-control"
														placeholder="Nhập lại mật khẩu" />
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-sm-6 col-sm-offset-3">
															<input type="button"
																onclick="createAccount.createAccount();"
																name="register-submit" id="register-submit" tabindex="4"
																class="form-control btn btn-register" value="Đăng ký">
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Single Blog  -->
	<!-- End Blog   -->
	<!-- =====  CONTAINER END  ===== -->
	<!-- =====  FOOTER START  ===== -->
	<jsp:include page="/WEB-INF/views/front-end/common/html/footer.jsp"></jsp:include>
	<!-- =====  FOOTER END  ===== -->
	<a id="scrollup"></a>
	<script src="${base }/js/jQuery_v3.1.1.min.js"></script>
	<script src="${base }/js/owl.carousel.min.js"></script>
	<script src="${base }/js/bootstrap.min.js"></script>
	<script src="${base }/js/jquery.magnific-popup.js"></script>
	<script src="${base }/js/custom.js"></script>
	<script src="${base }/js/jquery-ajax-email.js"></script>
	<script src="${base }/js/check-confirm-password.js"></script>
	<script src="${base }/alertify-js/alertify.min.js"></script>
	<script src="${base }/js/forgot_password.js"></script>
</body>
</html>