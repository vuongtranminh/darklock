<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- khai báo dùng spring -->

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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>
<!-- =====  CSS  ===== -->
<link rel="stylesheet" type="text/css" href="${base }/fontawesome-free-5.15.3-web/css/all.css">
<link rel="stylesheet" type="text/css" href="${base }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${base }/css/style-contact-us.css">
<link rel="stylesheet" type="text/css" href="${base }/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="${base }/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${base }/alertify-js/css/alertify.min.css">
<link rel="stylesheet" type="text/css" href="${base }/alertify-js/css/themes/default.min.css">
<link rel="shortcut icon" href="${base }/images/favicon.png">
<link rel="apple-touch-icon" href="${base }/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${base }/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${base }/images/apple-touch-icon-114x114.png">
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
					<div id="category-menu" class="navbar collapse in mb_40" aria-expanded="true" style="" role="button">
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
						<a href="#"><img src="${base }/images/left1.jpg" alt="Left Banner" class="img-responsive" /></a>
					</div>
				</div>
				<div class="col-sm-8 col-lg-9 mtb_20">
					<!-- contact  -->
					<div class="row">
						<div class="col-md-4 col-xs-12 contact">
							<div class="location mb_50">
								<h5 class="capitalize mb_20">
									<strong>Địa chỉ</strong>
								</h5>
								<div class="address">
									DarkLock Company <br> 20 Hồ Tùng Mậu <br> Hà Nội, Việt Nam
								</div>
								<div class="call mt_10">
									<i class="fa fa-phone" aria-hidden="true"></i>(+84)-35-999-0513
								</div>
							</div>
							<div class="Career mb_50">
								<h5 class="capitalize mb_20">
									<strong>Thông tin</strong>
								</h5>
								<div class="address">Mọi thông tin xin gửi về địa chỉ.</div>
								<div class="email mt_10">
									<i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:careers@yourdomain.com" target="_top">tranminhvuong.visedu@gmail.com</a>
								</div>
							</div>
							<div class="Hello mb_50">
								<h5 class="capitalize mb_20">
									<strong>Tư vấn</strong>
								</h5>
								<div class="address">Mọi yêu cầu tư vấn xin gửi về.</div>
								<div class="email mt_10">
									<i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@yourdomailname.com" target="_top">info@yourdomailname.com</a>
								</div>
							</div>
						</div>
						<div class="col-md-8 col-xs-12 contact-form mb_50">
							<!-- Contact FORM -->
							<div id="contact_form">
								<form id="contact_body" method="post">
                                    <input class="full-with-form " id="name" type="text" name="name" placeholder="Họ tên">
                                    <input class="full-with-form  mt_30" id="email" type="email" name="email" placeholder="Địa chỉ Email">
                                    <input class="full-with-form  mt_30" id="phone1" type="text" name="phone1" placeholder="Số điện thoại" maxlength="15">
                                    <input class="full-with-form  mt_30" id="subject" type="text" name="subject" placeholder="Tiêu đề">
                                    <textarea class="full-with-form  mt_30" id="message" name="message" placeholder="Message"></textarea>
                                    <button class="btn mt_30" type="button" onclick="contact.saveContact();">Gửi</button>
                                </form>
								<div id="contact_results"></div>
							</div>
							<!-- END Contact FORM -->
						</div>
					</div>
					<!-- map  -->
					<div class="row">
						<div class="col-xs-12 map mb_80">
							<div id="map"></div>
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
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAT3mI0RI16q19Oxv93gSxN0cF0wfxWN6w"></script>
	<script src="${base }/js/map.js"></script>
	<script src="${base }/js/mail.js"></script>
	<script src="${base }/js/jquery-ajax-email.js"></script>
	<script src="${base }/alertify-js/alertify.min.js"></script>
</body>

</html>