<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
						<sf:form class="form-horizontal" action="${base }/postcheckout" modelAttribute="saleOder">
						<!-- <div class="panel panel-default  ">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne">Bước 1: Tùy chọn Thanh toán <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6">
											<h3>Khách hàng mới</h3>
											<p>Tùy chọn thanh toán:</p>
											<div class="radio">
												<label> <input type="radio" checked="checked"
													value="register" name="account"> Đăng nhập tài khoản
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" value="guest"
													name="account"> Thanh toán của khách
												</label>
											</div>
											<p>Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh
												hơn, cập nhật trạng thái đơn hàng và theo dõi các đơn hàng
												bạn đã thực hiện trước đó.</p>
											<input type="button" class="btn mt_20" data-toggle="collapse"
												data-parent="#accordion" href="#collapseTwo"
												data-loading-text="Loading..." id="button-account"
												value="Tiếp tục">
										</div>
										<div class="col-sm-6">
											<h3>Khách hàng đã có tài khoản</h3>
											<p>Đã có tài khoản</p>
											<form action="">
											<div class="form-group">
												<label for="input-email" class="control-label">E-Mail</label>
												<input type="text" class="form-control" id="input-email"
													placeholder="E-Mail" value="" name="email">
											</div>
											<div class="form-group">
												<label for="input-password" class="control-label">Password</label>
												<input type="password" class="form-control"
													id="input-password" placeholder="Password" value=""
													name="password"> <input type="button" class="btn"
													data-loading-text="Loading..." id="button-login"
													value="Đăng nhập"> <a class="pt_30" href="#">Quên
													mật khẩu</a>
											</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div> -->
						<div class="panel panel-default ">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo">Bước 2: Chi tiết Giao hàng <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<%-- <sf:form class="form-horizontal"> --%>
										<div class="radio">
											<label> <input type="radio" checked="checked"
												value="existing" name="payment_address"
												data-id="payment-existing"> Sử dụng địa chỉ hiện có
											</label>
										</div>
										<div id="payment-existing">
											<select class="form-control" name="address_id">
												<option selected="selected" value="4">Vũ Bản, Bình
													Lục, Hà Nam</option>
											</select>
										</div>
										<div class="radio">
											<label> <input type="radio" value="new"
												name="payment_address" data-id="payment-new"> Sử
												dụng địa chỉ mới
											</label>
										</div>
										<br>
										<div id="payment-new" style="display: none;">
											<div class="form-group required">
												<label for="input-payment-name"
													class="col-sm-2 control-label">Họ tên khách hàng</label>
												<div class="col-sm-10">
													<sf:input path="customerName" type="text" class="form-control"
														id="input-payment-name" placeholder="Họ tên khách hàng"
														value="" name="name" />
												</div>
											</div>
											<div class="form-group required">
												<label for="input-payment-phonenumber"
													class="col-sm-2 control-label">Số điện thoại</label>
												<div class="col-sm-10">
													<sf:input path="customerPhone" type="text" class="form-control"
														id="input-payment-phonenumber" placeholder="Số điện thoại"
														value="" name="phonenumber" />
												</div>
											</div>
											<div class="form-group required">
												<label for="input-payment-email"
													class="col-sm-2 control-label">Email</label>
												<div class="col-sm-10">
													<sf:input path="customerEmail" type="text" class="form-control"
														id="input-payment-email" placeholder="Email" value=""
														name="email" />
												</div>
											</div>
											<div class="form-group required">
												<label for="input-payment-address-1"
													class="col-sm-2 control-label">Địa chỉ</label>
												<div class="col-sm-10">
													<sf:input path="customerAddress" type="text" class="form-control"
														id="input-payment-address-1" placeholder="Địa chỉ"
														value="" name="address_1" />
												</div>
											</div>
											<div class="form-group">
												<label for="input-payment-postcode"
													class="col-sm-2 control-label">Mã bưu điện</label>
												<div class="col-sm-10">
													<sf:input path="customerPostCode" type="text" class="form-control"
														id="input-payment-postcode" placeholder="Mã bưu điện"
														value="" name="postcode" />
												</div>
											</div>
											<div class="form-group required">
												<label for="input-payment-country"
													class="col-sm-2 control-label">Quốc gia</label>
												<div class="col-sm-10">
													<sf:select path="customerCountry" class="form-control" id="input-payment-country"
														name="country_id">
														<option value="">--- Please Select ---</option>
														<option value="244">Aaland Islands</option>
														<option value="1">Afghanistan</option>
														<option value="2">Albania</option>
														<option value="3">Algeria</option>
														<option value="4">American Samoa</option>
														<option value="5">Andorra</option>
														<option value="6">Angola</option>
														<option value="7">Anguilla</option>
														<option value="8">Antarctica</option>
														<option value="9">Antigua and Barbuda</option>
														<option value="10">Argentina</option>
														<option value="11">Armenia</option>
														<option value="12">Aruba</option>
														<option value="252">Ascension Island (British)</option>
														<option value="13">Australia</option>
														<option value="14">Austria</option>
														<option value="15">Azerbaijan</option>
														<option value="16">Bahamas</option>
														<option value="17">Bahrain</option>
														<option value="18">Bangladesh</option>
														<option value="19">Barbados</option>
														<option value="20">Belarus</option>
														<option value="21">Belgium</option>
														<option value="22">Belize</option>
														<option value="23">Benin</option>
														<option value="24">Bermuda</option>
														<option value="25">Bhutan</option>
														<option value="26">Bolivia</option>
														<option value="245">Bonaire, Sint Eustatius and
															Saba</option>
														<option value="27">Bosnia and Herzegovina</option>
														<option value="28">Botswana</option>
														<option value="29">Bouvet Island</option>
														<option value="30">Brazil</option>
														<option value="31">British Indian Ocean Territory</option>
														<option value="32">Brunei Darussalam</option>
														<option value="33">Bulgaria</option>
														<option value="34">Burkina Faso</option>
														<option value="35">Burundi</option>
														<option value="36">Cambodia</option>
														<option value="37">Cameroon</option>
														<option value="38">Canada</option>
														<option value="251">Canary Islands</option>
														<option value="39">Cape Verde</option>
														<option value="40">Cayman Islands</option>
														<option value="41">Central African Republic</option>
														<option value="42">Chad</option>
														<option value="43">Chile</option>
														<option value="44">China</option>
														<option value="45">Christmas Island</option>
														<option value="46">Cocos (Keeling) Islands</option>
														<option value="47">Colombia</option>
														<option value="48">Comoros</option>
														<option value="49">Congo</option>
														<option value="50">Cook Islands</option>
														<option value="51">Costa Rica</option>
														<option value="52">Cote D'Ivoire</option>
														<option value="53">Croatia</option>
														<option value="54">Cuba</option>
														<option value="246">Curacao</option>
														<option value="55">Cyprus</option>
														<option value="56">Czech Republic</option>
														<option value="237">Democratic Republic of Congo</option>
														<option value="57">Denmark</option>
														<option value="58">Djibouti</option>
														<option value="59">Dominica</option>
														<option value="60">Dominican Republic</option>
														<option value="61">East Timor</option>
														<option value="62">Ecuador</option>
														<option value="63">Egypt</option>
														<option value="64">El Salvador</option>
														<option value="65">Equatorial Guinea</option>
														<option value="66">Eritrea</option>
														<option value="67">Estonia</option>
														<option value="68">Ethiopia</option>
														<option value="69">Falkland Islands (Malvinas)</option>
														<option value="70">Faroe Islands</option>
														<option value="71">Fiji</option>
														<option value="72">Finland</option>
														<option value="74">France, Metropolitan</option>
														<option value="75">French Guiana</option>
														<option value="76">French Polynesia</option>
														<option value="77">French Southern Territories</option>
														<option value="126">FYROM</option>
														<option value="78">Gabon</option>
														<option value="79">Gambia</option>
														<option value="80">Georgia</option>
														<option value="81">Germany</option>
														<option value="82">Ghana</option>
														<option value="83">Gibraltar</option>
														<option value="84">Greece</option>
														<option value="85">Greenland</option>
														<option value="86">Grenada</option>
														<option value="87">Guadeloupe</option>
														<option value="88">Guam</option>
														<option value="89">Guatemala</option>
														<option value="256">Guernsey</option>
														<option value="90">Guinea</option>
														<option value="91">Guinea-Bissau</option>
														<option value="92">Guyana</option>
														<option value="93">Haiti</option>
														<option value="94">Heard and Mc Donald Islands</option>
														<option value="95">Honduras</option>
														<option value="96">Hong Kong</option>
														<option value="97">Hungary</option>
														<option value="98">Iceland</option>
														<option value="99">India</option>
														<option value="100">Indonesia</option>
														<option value="101">Iran (Islamic Republic of)</option>
														<option value="102">Iraq</option>
														<option value="103">Ireland</option>
														<option value="254">Isle of Man</option>
														<option value="104">Israel</option>
														<option value="105">Italy</option>
														<option value="106">Jamaica</option>
														<option value="107">Japan</option>
														<option value="257">Jersey</option>
														<option value="108">Jordan</option>
														<option value="109">Kazakhstan</option>
														<option value="110">Kenya</option>
														<option value="111">Kiribati</option>
														<option value="113">Korea, Republic of</option>
														<option value="253">Kosovo, Republic of</option>
														<option value="114">Kuwait</option>
														<option value="115">Kyrgyzstan</option>
														<option value="116">Lao People's Democratic
															Republic</option>
														<option value="117">Latvia</option>
														<option value="118">Lebanon</option>
														<option value="119">Lesotho</option>
														<option value="120">Liberia</option>
														<option value="121">Libyan Arab Jamahiriya</option>
														<option value="122">Liechtenstein</option>
														<option value="123">Lithuania</option>
														<option value="124">Luxembourg</option>
														<option value="125">Macau</option>
														<option value="127">Madagascar</option>
														<option value="128">Malawi</option>
														<option value="129">Malaysia</option>
														<option value="130">Maldives</option>
														<option value="131">Mali</option>
														<option value="132">Malta</option>
														<option value="133">Marshall Islands</option>
														<option value="134">Martinique</option>
														<option value="135">Mauritania</option>
														<option value="136">Mauritius</option>
														<option value="137">Mayotte</option>
														<option value="138">Mexico</option>
														<option value="139">Micronesia, Federated States
															of</option>
														<option value="140">Moldova, Republic of</option>
														<option value="141">Monaco</option>
														<option value="142">Mongolia</option>
														<option value="242">Montenegro</option>
														<option value="143">Montserrat</option>
														<option value="144">Morocco</option>
														<option value="145">Mozambique</option>
														<option value="146">Myanmar</option>
														<option value="147">Namibia</option>
														<option value="148">Nauru</option>
														<option value="149">Nepal</option>
														<option value="150">Netherlands</option>
														<option value="151">Netherlands Antilles</option>
														<option value="152">New Caledonia</option>
														<option value="153">New Zealand</option>
														<option value="154">Nicaragua</option>
														<option value="155">Niger</option>
														<option value="156">Nigeria</option>
														<option value="157">Niue</option>
														<option value="158">Norfolk Island</option>
														<option value="112">North Korea</option>
														<option value="159">Northern Mariana Islands</option>
														<option value="160">Norway</option>
														<option value="161">Oman</option>
														<option value="162">Pakistan</option>
														<option value="163">Palau</option>
														<option value="247">Palestinian Territory,
															Occupied</option>
														<option value="164">Panama</option>
														<option value="165">Papua New Guinea</option>
														<option value="166">Paraguay</option>
														<option value="167">Peru</option>
														<option value="168">Philippines</option>
														<option value="169">Pitcairn</option>
														<option value="170">Poland</option>
														<option value="171">Portugal</option>
														<option value="172">Puerto Rico</option>
														<option value="173">Qatar</option>
														<option value="174">Reunion</option>
														<option value="175">Romania</option>
														<option value="176">Russian Federation</option>
														<option value="177">Rwanda</option>
														<option value="178">Saint Kitts and Nevis</option>
														<option value="179">Saint Lucia</option>
														<option value="180">Saint Vincent and the
															Grenadines</option>
														<option value="181">Samoa</option>
														<option value="182">San Marino</option>
														<option value="183">Sao Tome and Principe</option>
														<option value="184">Saudi Arabia</option>
														<option value="185">Senegal</option>
														<option value="243">Serbia</option>
														<option value="186">Seychelles</option>
														<option value="187">Sierra Leone</option>
														<option value="188">Singapore</option>
														<option value="189">Slovak Republic</option>
														<option value="190">Slovenia</option>
														<option value="191">Solomon Islands</option>
														<option value="192">Somalia</option>
														<option value="193">South Africa</option>
														<option value="194">South Georgia &amp; South
															Sandwich Islands</option>
														<option value="248">South Sudan</option>
														<option value="195">Spain</option>
														<option value="196">Sri Lanka</option>
														<option value="249">St. Barthelemy</option>
														<option value="197">St. Helena</option>
														<option value="250">St. Martin (French part)</option>
														<option value="198">St. Pierre and Miquelon</option>
														<option value="199">Sudan</option>
														<option value="200">Suriname</option>
														<option value="201">Svalbard and Jan Mayen
															Islands</option>
														<option value="202">Swaziland</option>
														<option value="203">Sweden</option>
														<option value="204">Switzerland</option>
														<option value="205">Syrian Arab Republic</option>
														<option value="206">Taiwan</option>
														<option value="207">Tajikistan</option>
														<option value="208">Tanzania, United Republic of</option>
														<option value="209">Thailand</option>
														<option value="210">Togo</option>
														<option value="211">Tokelau</option>
														<option value="212">Tonga</option>
														<option value="213">Trinidad and Tobago</option>
														<option value="255">Tristan da Cunha</option>
														<option value="214">Tunisia</option>
														<option value="215">Turkey</option>
														<option value="216">Turkmenistan</option>
														<option value="217">Turks and Caicos Islands</option>
														<option value="218">Tuvalu</option>
														<option value="219">Uganda</option>
														<option value="220">Ukraine</option>
														<option value="221">United Arab Emirates</option>
														<option value="222">United Kingdom</option>
														<option value="223">United States</option>
														<option value="224">United States Minor Outlying
															Islands</option>
														<option value="225">Uruguay</option>
														<option value="226">Uzbekistan</option>
														<option value="227">Vanuatu</option>
														<option value="228">Vatican City State (Holy See)</option>
														<option value="229">Venezuela</option>
														<option selected="selected" value="230">Viet Nam</option>
														<option value="231">Virgin Islands (British)</option>
														<option value="232">Virgin Islands (U.S.)</option>
														<option value="233">Wallis and Futuna Islands</option>
														<option value="234">Western Sahara</option>
														<option value="235">Yemen</option>
														<option value="238">Zambia</option>
														<option value="239">Zimbabwe</option>
													</sf:select>
												</div>
											</div>
											<div class="form-group required">
												<label for="input-payment-zone"
													class="col-sm-2 control-label">Tỉnh / Thành phố</label>
												<div class="col-sm-10">
													<sf:select path="customerRegionOrState" class="form-control" id="input-payment-zone"
														name="zone_id">
														<option value="">--- Vui lòng chọn ---</option>
														<option selected="selected" value="3121">Hà Nội</option>
														<option value="3122">Al Ladhiqiyah</option>
														<option value="3123">Al Qunaytirah</option>
														<option value="3124">Ar Raqqah</option>
														<option value="3125">As Suwayda</option>
														<option value="3126">Dara</option>
														<option value="3127">Dayr az Zawr</option>
														<option value="3128">Dimashq</option>
														<option value="3129">Halab</option>
														<option value="3130">Hamah</option>
														<option value="3131">Hims</option>
														<option value="3132">Idlib</option>
														<option value="3133">Rif Dimashq</option>
														<option value="3134">Tartus</option>
													</sf:select>
												</div>
											</div>
										</div>
										<div class="buttons clearfix">
											<div class="pull-right">
												<input type="button" class="btn" data-toggle="collapse"
													data-parent="#accordion" href="#collapsefour"
													data-loading-text="Loading..." id="button-payment-address"
													value="Tiếp tục" >
											</div>
										</div>
									<%-- </sf:form> --%>
								</div>
							</div>
						</div>
						<div class="panel panel-default ">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapsefour">Bước 3: Phương thức giao hàng <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapsefour" class="panel-collapse collapse">
								<div class="panel-body">
									<%-- <sf:form id="form2"> --%>
										<p>Vui lòng chọn phương thức vận chuyển để sử dụng cho đơn
										đặt hàng này.</p>
									<p>
										<strong>Phí vận chuyển cố định</strong>
									</p>
									<div class="radio">
										<label> <input type="radio" checked="checked"
											value="flat.flat" name="shipping_method"> Phí vận
											chuyển cố định - $5.00
										</label>
									</div>
									<p>
										<strong>Thêm bình luận về đơn hàng của bạn</strong>
									</p>
									<p>
										<sf:textarea path="customerCommentsDelivery" class="form-control" rows="8" name="comment"></sf:textarea>
									</p>
									<div class="buttons">
										<div class="pull-right">
											<input type="button" class="btn mt_20" data-toggle="collapse"
												data-parent="#accordion" href="#collapsefive"
												data-loading-text="Loading..." id="button-shipping-method"
												value="Tiếp tục">
										</div>
									</div>
									<%-- </sf:form> --%>
									
								</div>
							</div>
						</div>
						<div class="panel panel-default ">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapsefive">Bước 4: Phương thức thanh toán <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapsefive" class="panel-collapse collapse">
								<div class="panel-body">
								<%-- <sf:form id="form3"> --%>
									<p>Vui lòng chọn phương thức thanh toán để sử dụng cho đơn
										đặt hàng này.</p>
									<div class="radio">
										<label> <input type="radio" checked="checked"
											value="cod" name="payment_method"> Thanh toán khi
											giao hàng
										</label>
									</div>
									<p>
										<strong>Thêm bình luận về đơn hàng của bạn</strong>
									</p>
									<p>
										<sf:textarea path="customerCommentsPayment" class="form-control" rows="8" name="comment"></sf:textarea>
									</p>
									<div class="buttons">
										<div class="pull-right mt_20">
											Tôi đã đọc và đồng ý với các <a class="agree" href="#"><b>Điều
													khoản &amp; Điều kiện</b></a> <input type="checkbox" value="1"
												name="agree"> &nbsp; <input type="button"
												class="btn" data-toggle="collapse" data-parent="#accordion"
												href="#collapsesix" data-loading-text="Loading..."
												id="button-payment-method" value="Tiếp tục">
										</div>
									</div>
									<%-- </sf:form> --%>
								</div>
							</div>
						</div>
						<div class="panel panel-default ">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapsesix">Bước 5: Xác nhận Đơn hàng <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapsesix" class="panel-collapse collapse">
								<c:choose>
									<c:when
										test="${cart.listCartItems == null  || cart.listCartItems.size() == 0 }">
										<div class="panel-body">Bạn chưa có sản phẩm nào</div>
									</c:when>
									<c:otherwise>
										<div class="panel-body">
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
														<c:forEach items="${cart.listCartItems }" var="cartItem">
															<tr>
																<td class="text-left"><a
																	href="http://localhost/opc001/index.php?route=product/product&amp;product_id=46">${cartItem.productName }</a></td>
																<td class="text-left">${cartItem.productModel }</td>
																<td class="text-right">${cartItem.quantity }</td>
																<td class="text-right"><fmt:formatNumber
																		value="${cartItem.price }" type="currency" /></td>
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
																	value="${totalPrice }" type="currency" /></td>
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
																	value="${totalPrice + 30000}" type="currency" /></td>
														</tr>
													</tfoot>
												</table>
											</div>
											<div class="buttons">
												<div class="pull-right">
													<input type="submit" data-loading-text="Loading..."
														class="btn" id="button-confirm" value="Xác nhận đơn hàng">
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						</sf:form>
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
	<script src="${base }/js/add-to-cart.js"></script>
</body>

</html>