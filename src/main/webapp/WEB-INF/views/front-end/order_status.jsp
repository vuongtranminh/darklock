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
	href="${base }/css/style-checkout-page.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/alertify.min.css">
<link rel="stylesheet" type="text/css"
	href="${base }/alertify-js/css/themes/default.min.css">
<link rel="shortcut icon" href="${base }/images/favicon.png">
<link rel="apple-touch-icon" href="${base }/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${base }/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${base }/images/apple-touch-icon-114x114.png">
</head>

<body>
	<!-- =====  LODER  ===== -->
	<div class="loder"></div>
	<div class="wrapper">
		<!-- =====  HEADER START  ===== -->
		<jsp:include page="/WEB-INF/views/front-end/common/html/header.jsp"></jsp:include>
		<!-- =====  HEADER END  ===== -->
		<!-- =====  CONTAINER START  ===== -->
		<div class="container">
			<div class="row ">
				<!-- =====  BANNER STRAT  ===== -->
				<div class="col-sm-12">
					<div class="breadcrumb ptb_20">
						<h1>Shopping Cart</h1>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li class="active">Shopping Cart</li>
						</ul>
					</div>
				</div>
				<!-- =====  BREADCRUMB END===== -->
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
					<div class="left_banner left-sidebar-widget mb_50 mt_30">
						<a href="#"><img src="${base }/images/left1.jpg"
							alt="Left Banner" class="img-responsive" /></a>
					</div>
					<div class="left-special left-sidebar-widget mb_50">
						<div class="heading-part mb_20 ">
							<h2 class="main_title">Top Products</h2>
						</div>
						<div id="left-special" class="owl-carousel">
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product8.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product8-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product9.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product9-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product10.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product10-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product1.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product1-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product2.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product2-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product3.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product3-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product4.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product4-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product5.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product5-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product6.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product6-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product7.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product7-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product8.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product8-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product9.jpg"> <img
													class="img-responsive" title="iPod Classic"
													alt="iPod Classic"
													src="${base }/images/product/product9-1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div class="col-xs-8">
										<div class="caption product-detail">
											<h6 class="product-name">
												<a href="#">New LCDScreen and HD Video Recording</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span
													class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-lg-9 mtb_20">
					<div class="panel-group" id="accordion">
						<c:choose>
							<c:when test="${listSaleOrders == null || listSaleOrders.size() == 0 }">
								<div class="panel-body">Bạn chưa có đơn hàng nào</div>
							</c:when>
							<c:otherwise>
								<c:forEach items="${listSaleOrders }" var="saleOrder">
									<div class="panel panel-default ">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse${saleOrder.id }">Đơn hàng ngày
													${saleOrder.createdDate } <strong>(<c:choose>
															<c:when test="${saleOrder.orderStatus == 0}">
															Chưa xác nhận
														</c:when>
															<c:when test="${saleOrder.orderStatus == 1}">
															Chờ giao hàng
														</c:when>
															<c:otherwise>
															Đã giao hàng
														</c:otherwise>
														</c:choose>)
												</strong> <i class="fa fa-caret-down"></i>
												</a>
											</h4>
										</div>
										<div id="collapse${saleOrder.id }"
											class="panel-collapse collapse 
											<c:if test="${saleOrder.orderStatus != 2}">
												in
											</c:if>
											">


											<div class="panel-body">
												<p>
													<strong>Họ tên khách hàng: </strong>
													${saleOrder.customerName }
												</p>
												<p>
													<strong>Số điện thoại: </strong> ${saleOrder.customerPhone }
												</p>
												<p>
													<strong>Email: </strong> ${saleOrder.customerEmail }
												</p>
												<p>
													<strong>Địa chỉ: </strong> ${saleOrder.customerAddress }
												</p>
												<p>
													<strong>Mã bưu điện: </strong> ${saleOrder.customerPostCode }
												</p>
												<p>
													<strong>Quốc gia: </strong> ${saleOrder.customerCountry }
												</p>
												<p>
													<strong>Tỉnh / Thành phố: </strong>
													${saleOrder.customerRegionOrState }
												</p>
												<p>
													<strong>Sản phẩm: </strong>
												</p>
												<div class="table-responsive">
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<td class="text-left">Tên sản phẩm</td>
																<td class="text-left">Model</td>
																<td class="text-right">Số lượng</td>
																<td class="text-right">Giá</td>
																<td class="text-right">Tổng tiền</td>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${saleOrder.listSaleOrderProducts }"
																var="cartItem">
																<tr>
																	<td class="text-left"><a
																		href="http://localhost/opc001/index.php?route=product/product&amp;product_id=46">${cartItem.product.productName }</a></td>
																	<td class="text-left">${cartItem.product.model }</td>
																	<td class="text-right">${cartItem.quality }</td>
																	<td class="text-right"><fmt:formatNumber
																			value="${cartItem.product.price }" type="currency" /></td>
																	<td class="text-right"><fmt:formatNumber
																			value="${cartItem.subTotalPrice }" type="currency" /></td>
																</tr>
															</c:forEach>
														</tbody>
														<tfoot>
															<tr>
																<td class="text-right" colspan="4"><strong>Tạm
																		tính:</strong></td>
																<td class="text-right"><fmt:formatNumber
																		value="${saleOrder.total - 30000 }" type="currency" /></td>
															</tr>
															<tr>
																<td class="text-right" colspan="4"><strong>Phí
																		vận chuyển cố định:</strong></td>
																<td class="text-right"><fmt:formatNumber
																		value="30000" type="currency" /></td>
															</tr>
															<tr>
																<td class="text-right" colspan="4"><strong>Tổng
																		tiền:</strong></td>
																<td class="text-right"><fmt:formatNumber
																		value="${saleOrder.total}" type="currency" /></td>
															</tr>
														</tfoot>
													</table>
												</div>
												<c:choose>
													<c:when test="${saleOrder.orderStatus == 0}">
														<div class="buttons">
															<div class="pull-right">
																<input type="button" data-loading-text="Loading..."
																	class="btn" id="button-confirm" value="Hủy đơn hàng"
																	onclick="removeSaleOrder(${saleOrder.id });">
															</div>
														</div>
													</c:when>
													<c:when test="${saleOrder.orderStatus == 1}">
														<div class="buttons">
															<div class="pull-right">
																<input type="button" disabled="disabled"
																	data-loading-text="Loading..." class="btn"
																	id="button-confirm" value="Chờ giao hàng">
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<input type="button" disabled="disabled"
															data-loading-text="Loading..." class="btn"
															id="button-confirm" value="Đơn hàng đã được giao">
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =====  SUB BANNER END  ===== -->
	<jsp:include
		page="/WEB-INF/views/front-end/common/html/brand_carouse.jsp"></jsp:include>
	</div>
	<!-- =====  CONTAINER END  ===== -->
	<!-- =====  FOOTER START  ===== -->
	<jsp:include page="/WEB-INF/views/front-end/common/html/footer.jsp"></jsp:include>
	<!-- =====  FOOTER END  ===== -->
	</div>
	<a id="scrollup"></a>
	<script src="${base }/js/jQuery_v3.1.1.min.js"></script>
	<script src="${base }/js/owl.carousel.min.js"></script>
	<script src="${base }/js/bootstrap.min.js"></script>
	<script src="${base }/js/jquery.magnific-popup.js"></script>
	<script src="${base }/js/custom.js"></script>
	<script src="${base }/js/check_out_page.js"></script>
	<script src="${base }/js/jquery-ajax-email.js"></script>
	<script src="${base }/alertify-js/alertify.min.js"></script>
	<script src="${base }/js/add-to-cart.js"></script>
</body>

</html>