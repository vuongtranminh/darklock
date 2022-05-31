<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="${base }/css/style-product_detail_page.css">
<link rel="stylesheet" type="text/css" href="${base }/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="${base }/css/owl.carousel.css">
<link rel="shortcut icon" href="${base }/images/favicon.png">
<link rel="apple-touch-icon" href="${base }/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${base }/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${base }/images/apple-touch-icon-114x114.png">
</head>

<body class="shop-detail">
	<!-- =====  LODER  ===== -->
	<!-- <div class="loder"></div> -->
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
						<h1>New LCDScreen...</h1>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="category_page.html">Products</a></li>
							<li class="active">New LCDS...</li>
						</ul>
					</div>
				</div>
				<!-- =====  BREADCRUMB END===== -->
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
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product3.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product3-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product4.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product4-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product5.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product5-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product6.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product6-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product7.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product7-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product8.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product8-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product9.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product9-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product10.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product10-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product1.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product1-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row ">
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product2.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product2-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product3.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product3-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
								<li class="item product-layout-left mb_20">
									<div class="product-list col-xs-4">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product4.jpg"> <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="${base }/images/product/product4-1.jpg">
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
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
													class="fa fa-star fa-stack-x"></i></span>
											</div>
											<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-lg-9 mtb_20">
					<div class="row mt_10 ">
						<div class="col-md-6">
							<div>
								<a class="thumbnails"> <img data-name="product_image" src="${base }/images/product/product1.jpg" alt="" /></a>
							</div>
							<div id="product-thumbnail" class="owl-carousel">
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product1.jpg" data-fancybox="group1"> <img src="${base }/images/product/product1.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product2.jpg" data-fancybox="group1"> <img src="${base }/images/product/product2.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product3.jpg" data-fancybox="group1"> <img src="${base }/images/product/product3.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product4.jpg" data-fancybox="group1"> <img src="${base }/images/product/product4.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product5.jpg" data-fancybox="group1"> <img src="${base }/images/product/product5.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product6.jpg" data-fancybox="group1"> <img src="${base }/images/product/product6.jpg" alt="" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail" href="${base }/images/product/product7.jpg" data-fancybox="group1"> <img src="${base }/images/product/product7.jpg" alt="" /></a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 prodetail caption product-thumb">
							<h4 data-name="product_name" class="product-name">
								<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
							</h4>
							<div class="rating">
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
									class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-x"></i></span>
							</div>
							<span class="price mb_20"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
							<hr>
							<ul class="list-unstyled product_info mtb_20">
								<li><label>Brand:</label> <span> <a href="#">Apple</a></span></li>
								<li><label>Product Code:</label> <span> product 20</span></li>
								<li><label>Availability:</label> <span> In Stock</span></li>
							</ul>
							<hr>
							<p class="product-desc mtb_30">More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by
								flipping..</p>
							<div id="product">
								<div class="form-group">
									<div class="row">
										<div class="Sort-by col-md-6">
											<label>Cỡ</label> <select name="product_size" id="select-by-size" class="selectpicker form-control">
												<option>Small</option>
												<option>Medium</option>
												<option>Large</option>
											</select>
										</div>
										<div class="Color col-md-6">
											<label>Màu</label> <select name="product_color" id="select-by-color" class="selectpicker form-control">
												<option>Blue</option>
												<option>Green</option>
												<option>Orange</option>
												<option>White</option>
											</select>
										</div>
									</div>
								</div>
								<div class="qty mt_30 form-group2">
									<label>Số lượng</label> <input name="product_quantity" min="1" value="1" type="number">
								</div>
								<div class="button-group mt_30">
									<div class="add-to-cart">
										<a href="#"><span>Add to cart</span></a>
									</div>
									<div class="wishlist">
										<a href="#"><span>wishlist</span></a>
									</div>
									<div class="compare">
										<a href="#"><span>Compare</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div id="exTab5" class="mtb_30">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#1c" data-toggle="tab">Tổng quan</a></li>
									<li><a href="#2c" data-toggle="tab">Nhận xét (1)</a></li>
									<li><a href="#3c" data-toggle="tab">Hướng dẫn</a></li>
								</ul>
								<div class="tab-content ">
									<div class="tab-pane active pt_20" id="1c">
										<p>CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel
											tellus.</p>
									</div>
									<div class="tab-pane" id="2c">
										<form class="form-horizontal">
											<div id="review"></div>
											<h4 class="mt_20 mb_30">Viết nhận xét</h4>
											<div class="form-group required">
												<div class="col-sm-12">
													<label class="control-label" for="input-name">Tên của bạn</label> <input name="name" value="" id="input-name" class="form-control" type="text">
												</div>
											</div>
											<div class="form-group required">
												<div class="col-sm-12">
													<label class="control-label" for="input-review">Đánh giá của bạn</label>
													<textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
													<div class="help-block">
														<span class="text-danger">Note:</span> Vui lòng không spam!
													</div>
												</div>
											</div>
											<div class="form-group required">
												<div class="col-md-6">
													<label class="control-label">Đánh giá</label>
													<div class="rates">
														<span>Không tốt</span> <input name="rating" value="1" type="radio"> <input name="rating" value="2" type="radio"> <input name="rating" value="3" type="radio"> <input name="rating" value="4" type="radio"> <input name="rating" value="5" type="radio">
														<span>Tốt</span>
													</div>
												</div>
												<div class="col-md-6">
													<div class="buttons pull-right">
														<button type="submit" class="btn btn-md btn-link">Gửi</button>
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="tab-pane pt_20" id="3c">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel
											tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="heading-part text-center mb_10">
								<h2 class="main_title mt_50">Sản phẩm tương tự</h2>
							</div>
							<div class="related_pro box">
								<div class="product-layout  product-grid related-pro  owl-carousel mb_50 ">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product7.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product7-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product8.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product8-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product9.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product9-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product10.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product10-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product1-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product2.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product2-1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive">
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
													<div class="add-to-cart">
														<a href="#"><span>Add to cart</span></a>
													</div>
												</div>
											</div>
											<div class="caption product-detail text-center">
												<h6 data-name="product_name" class="product-name mt_20">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Video Recording</a>
												</h6>
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- =====  SUB BANNER END  ===== -->
			<jsp:include page="/WEB-INF/views/front-end/common/html/brand_carouse.jsp"></jsp:include>
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
	<script src="${base }/js/jquery-ajax-email.js"></script>
</body>

</html>