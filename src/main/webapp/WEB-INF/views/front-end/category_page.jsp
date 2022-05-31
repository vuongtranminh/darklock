<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Paging -->
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/pagingTagLibs1.tld"%>

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
	href="${base }/css/style-category-page.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="${base }/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${base }/css/jquery-ui.css">
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
	<div id="loder" class="loder"></div>
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
						<h1>Products</h1>
						<ul>
							<li><a href="${base }/index">Home</a></li>
							<li class="active">Products</li>
						</ul>
					</div>
				</div>
				<!-- =====  BREADCRUMB END===== -->
				<div id="column-left" class="col-sm-4 col-lg-3 ">
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
					<div class="filter left-sidebar-widget mb_50">
						<div class="heading-part mtb_20 ">
							<h2 class="main_title">Tìm kiếm theo</h2>
						</div>
						<div class="filter-block">
							<p>
								<label for="amount">Phạm vi giá:</label> <input type="text"
									id="amount" readonly>
							</p>
							<div id="slider-range" class="mtb_20"></div>
							<div class="list-group">
								<div class="list-group-item mb_10">
									<label>Màu sắc</label>
									<div id="filter-group1">
										<div class="checkbox">
											<label> <input value="" type="checkbox"> Red
												(10)
											</label>
										</div>
										<div class="checkbox">
											<label> <input value="" type="checkbox">
												Green (06)
											</label>
										</div>
										<div class="checkbox ">
											<label> <input value="" type="checkbox">
												Blue(09)
											</label>
										</div>
									</div>
								</div>
								<div class="list-group-item mb_10">
									<label>Size</label>
									<div id="filter-group3">
										<div class="checkbox">
											<label> <input value="" type="checkbox"> Big
												(3)
											</label>
										</div>
										<div class="checkbox">
											<label> <input value="" type="checkbox">
												Medium (2)
											</label>
										</div>
										<div class="checkbox">
											<label> <input value="" type="checkbox">
												Small (1)
											</label>
										</div>
									</div>
								</div>
								<button type="button" class="btn">Tìm kiếm nhanh</button>
							</div>
						</div>
					</div>
					<div class="left_banner left-sidebar-widget mb_50">
						<a href="#"><img src="${base }/images/left1.jpg"
							alt="Left Banner" class="img-responsive" /></a>
					</div>
					<div class="left-special left-sidebar-widget mb_50">
						<div class="heading-part mb_10 ">
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
							</ul>
							<ul class="row ">
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
							</ul>
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
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-lg-9 mtb_20">
					<div class="category-page-wrapper mb_30">
						<div class="list-grid-wrapper pull-left">
							<div class="btn-group btn-list-grid">
								<button type="button" id="grid-view"
									class="btn btn-default grid-view active"></button>
								<button type="button" id="list-view"
									class="btn btn-default list-view"></button>
							</div>
						</div>
						<div class="page-wrapper pull-right">
							<label class="control-label" for="input-limit">Show :</label>
							<div class="limit">
								<select id="input-limit" class="form-control">
									<option value="8" selected="selected">08</option>
									<option value="25">25</option>
									<option value="50">50</option>
									<option value="75">75</option>
									<option value="100">100</option>
								</select>
							</div>
							<span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
						</div>
						<div class="sort-wrapper pull-right">
							<label class="control-label" for="input-sort">Sắp xếp :</label>
							<div class="sort-inner">
								<select id="input-sort" class="form-control">
									<option value="ASC" selected="selected">Mặc định</option>
									<option value="DESC">Tên (A - Z)</option>
									<option value="DESC">Tên (Z - A)</option>
									<option value="ASC">Giá (Thấp &gt; Cao)</option>
									<option value="DESC">Giá (Thấp &gt; Cao)</option>
									<option value="DESC">Đánh giá (Cao)</option>
									<option value="ASC">Đánh giá (Thấp)</option>
									<option value="ASC">Model (A - Z)</option>
									<option value="DESC">Model (Z - A)</option>
								</select>
							</div>
							<span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
						</div>
					</div>
					<div class="row" id="tableProductList">
						<%-- <c:forEach items="${listProduct }" var="product">
							
							<div class="product-layout product-grid col-lg-4 col-md-4 col-xs-6 ">
								<div class="item">
									<div class="product-thumb clearfix mb_30">
										<div class="image product-imageblock">
											<a href="${base }/product/${product.seo}">
											<img data-name="product_image" src="${base }/upload${product.avatarFirst }" alt="iPod Classic" title="iPod Classic" class="img-responsive" />
											<img src="${base }/upload${product.avatarSecond }" alt="iPod Classic" title="iPod Classic" class="img-responsive" />
											</a>
											<div class="button-group text-center">
												<div class="wishlist">
													<a href="#"><span>wishlist</span></a>
												</div>
												<div class="quickview">
													<a href="#"><span>Quick View</span></a>
												</div>
												<div class="compare">
													<a href="#"><span>Compare</span></a>
												</div>
												<div class="add-to-cart" onclick="Cart.addToCart('${product.id}', 1);">
													<a href="#"><span>Add to cart</span></a>
												</div>
											</div>
											<div class="sale">
												<span>-${product.salePercent }%</span>
											</div>
										</div>
										<div class="caption product-detail text-center">
											<h6 data-name="product_name" class="product-name mt_20">
												<a href="#" title="Casual Shirt With Ruffle Hem">${product.productName }</a>
											</h6>
											<div class="rating">
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol"></span> <fmt:formatNumber value="${product.salePrice }" type="currency" /></span> </span>
											<p class="product-desc mt_20 mb_60">More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.Cover Flow. Browse through your music
												collection by flipping..</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach> --%>
						<c:forEach items="${listProduct }" var="product1" step="3"
							varStatus="myIndex">
							<div class="row">
								<c:forEach items="${listProduct }" var="product"
									begin="${myIndex.index }" end="${myIndex.index + 2 }" step="1">
									<div class="product-layout product-grid col-md-4 col-xs-6 ">
										<div class="item">
											<div class="product-thumb clearfix mb_30">
												<div class="image product-imageblock">
													<a href="${base }/product/${product.seo}"> <img
														data-name="product_image"
														src="${base }/upload${product.avatarFirst }"
														alt="iPod Classic" title="iPod Classic"
														class="img-responsive" /> <img
														src="${base }/upload${product.avatarSecond }"
														alt="iPod Classic" title="iPod Classic"
														class="img-responsive" />
													</a>
													<div class="button-group text-center">
														<div class="wishlist">
															<a href="#"><span>wishlist</span></a>
														</div>
														<div class="quickview">
															<a href="#"><span>Quick View</span></a>
														</div>
														<div class="compare">
															<a href="#"><span>Compare</span></a>
														</div>
														<div class="add-to-cart"
															onclick="Cart.addToCart('${product.id}', 1);">
															<a href="#"><span>Add to cart</span></a>
														</div>
													</div>
													<div class="sale">
														<span>-${product.salePercent }%</span>
													</div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name mt_20">
														<a href="#" title="Casual Shirt With Ruffle Hem">${product.productName }</a>
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
															class="currencySymbol"></span> <fmt:formatNumber
																value="${product.salePrice }" type="currency" /></span> </span>
													<p class="product-desc mt_20 mb_60">More room to move.
														With 80GB or 160GB of storage and up to 40 hours of
														battery life, the new iPod classic lets you enjoy up to
														40,000 songs or up to 200 hours of video or any
														combination wherever you go.Cover Flow. Browse through
														your music collection by flipping..</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
					<div class="pagination-nav text-center mt_50">
						<!-- <ul>
							<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul> -->
						<c:set var="req" value="${pageContext.request}" />
						<c:set var="baseURL"
							value="${fn:replace(req.requestURL, req.requestURI, '')}" />
						<c:set var="params"
							value="${requestScope['javax.servlet.forward.query_string']}" />
						<c:set var="requestPath"
							value="${requestScope['javax.servlet.forward.request_uri']}" />
						<c:set var="pageUrl"
							value="${ baseURL }${ requestPath }${ not empty params ? '?'+=params+='&':'' }" />
						<tag:paginate offset="${productSearch.offset }"
							count="${productSearch.count }" uri="${pageUrl}" />
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
	<script src="${base }/js/jquery-ui.js"></script>
	<script src="${base }/js/slider-range.js"></script>
	<script src="${base }/js/jquery-ajax-email.js"></script>
	<script src="${base }/js/add-to-cart.js"></script>
	<script src="${base }/alertify-js/alertify.min.js"></script>
	<script type="text/javascript">
		function getInputQuantity() {
			var x = document.getElementById("getInputQuantity").value;
			document.getElementById("abc").innerHTML = "You wrote: " + x;
		}
	</script>
</body>

</html>