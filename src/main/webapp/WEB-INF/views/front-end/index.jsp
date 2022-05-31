<!-- Tiếng Việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="${base }/css/style-index.css">
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
		<div id="subscribe-me" class="modal animated fade in" role="dialog" data-keyboard="true" tabindex="-1">
			<div class="newsletter-popup">
				<img class="offer" src="${base }/images/newsbg.jpg" alt="offer">
				<div class="newsletter-popup-static newsletter-popup-top">
					<div class="popup-text">
						<div class="popup-title">
							50% <span>off</span>
						</div>
						<div class="popup-desc">
							<div>Đăng ký và nhận giảm giá 50% cho Đơn hàng tiếp theo của bạn</div>
						</div>
					</div>
					<form onsubmit="return  validatpopupemail();" method="post">
						<div class="form-group required">
							<input type="email" name="email-popup" id="email-popup" placeholder="Nhập Email của bạn" class="form-control input-lg" required />
							<button type="submit" class="btn btn-default btn-lg" id="email-popup-submit">Đăng ký</button>
							<label class="checkme"> <input type="checkbox" value="" id="checkme" /> Không hiển thị lại
							</label>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- =====  HEADER START  ===== -->
		<jsp:include page="/WEB-INF/views/front-end/common/html/header.jsp"></jsp:include>
		<!-- =====  HEADER END  ===== -->
		<!-- =====  BANNER STRAT  ===== -->
		<div class="banner">
			<div class="main-banner owl-carousel">
				<div class="item">
					<a href="#"><img src="${base }/images/main_banner1.jpg" alt="Main Banner" class="img-responsive" /></a>
				</div>
				<div class="item">
					<a href="#"><img src="${base }/images/main_banner2.jpg" alt="Main Banner" class="img-responsive" /></a>
				</div>
			</div>
		</div>
		<!-- =====  BANNER END  ===== -->
		<!-- =====  CONTAINER START  ===== -->
		<div class="container">
			<!-- =====  SUB BANNER  STRAT ===== -->
			<div class="row">
				<div class="col-sm-3 mt_20 cms-icon ">
					<div class="feature-i-left ptb_30 ">
						<div class="icon-right Shipping"></div>
						<h6>Giao hàng miễn phí</h6>
						<p>Thanh toán (COD) tại nhà</p>
					</div>
				</div>
				<div class="col-sm-3 mt_20 cms-icon ">
					<div class="feature-i-left ptb_30 ">
						<div class="icon-right Order"></div>
						<h6>30 ngày đổi sản phẩm</h6>
						<p>Miễn phí</p>
					</div>
				</div>
				<div class="col-sm-3 mt_20 cms-icon ">
					<div class="feature-i-left ptb_30 ">
						<div class="icon-right Save"></div>
						<h6>Mua sắm và Tiết kiệm</h6>
						<p>Giá chuẩn hãng</p>
					</div>
				</div>
				<div class="col-sm-3 mt_20 cms-icon ">
					<div class="feature-i-left ptb_30 ">
						<div class="icon-right Safe"></div>
						<h6>Chính hãng 100%</h6>
						<p>Xuất hóa đơn đỏ</p>
					</div>
				</div>
			</div>
			<div class="row ">
				<div class="col-sm-12 mt_30">
					<!-- =====  PRODUCT TAB  ===== -->
					<div id="product-tab" class="mt_10">
						<div class="heading-part mb_10 ">
							<h2 class="main_title">Sản phẩm bán chạy</h2>
						</div>
						<ul class="nav text-right">
							<li class="active"><a href="#nArrivals" data-toggle="tab">Mới nhất</a></li>
							<li><a href="#Bestsellers" data-toggle="tab">Bán chạy nhất</a></li>
							<li><a href="#Featured" data-toggle="tab">Nổi bật nhất</a></li>
						</ul>
						<div class="tab-content clearfix box">
							<div class="tab-pane active" id="nArrivals">
								<div class="nArrivals owl-carousel">
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product9.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product9-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product1-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product3.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product3-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product5.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product5-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product7.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product7-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product9.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product9-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="Bestsellers">
								<div class="Bestsellers owl-carousel">
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product1.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product1-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product3.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product3-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product5.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product5-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product6.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product6-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product8.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product8-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product10.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product10-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="Featured">
								<div class="Featured owl-carousel">
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product2.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product2-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product4.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product4-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product6.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product6-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product8.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product8-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product10.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product10-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb  mb_30">
												<div class="image product-imageblock">
													<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product2.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product2-1.jpg" alt="iPod Classic" title="iPod Classic"
														class="img-responsive">
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
													<div class="rating">
														<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
															class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
															class="fa fa-star fa-stack-x"></i></span>
													</div>
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
													</h6>
													<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- =====  PRODUCT TAB  END ===== -->
				</div>
			</div>
			<div class="row">
				<div class="cms_banner">
					<div class="col-xs-12 mt_60">
						<div id="subbanner4" class="sub-hover">
							<div class="sub-img">
								<a href="#"><img src="images/sub5.jpg" alt="Sub Banner5" class="img-responsive"></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 mtb_10">
					<!-- =====  PRODUCT TAB  ===== -->
					<div class="mt_60">
						<div class="heading-part mb_10 ">
							<h2 class="main_title">Giảm giá trong tuần</h2>
						</div>
						<div class="latest_pro box">
							<div class="latest owl-carousel">
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product2.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product2-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product4.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product4-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product6.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product6-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product8.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product8-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product10.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product10-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
								<div class="product-grid">
									<div class="item">
										<div class="product-thumb">
											<div class="image product-imageblock">
												<a href="product_detail_page.html"> <img data-name="product_image" src="${base }/images/product/product2.jpg" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="${base }/images/product/product2-1.jpg" alt="iPod Classic" title="iPod Classic"
													class="img-responsive">
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
												<div class="rating">
													<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i
														class="fa fa-star fa-stack-x"></i></span>
												</div>
												<h6 data-name="product_name" class="product-name">
													<a href="#" title="Casual Shirt With Ruffle Hem">New LCDScreen and HD Vide..</a>
												</h6>
												<span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span> </span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 mtb_10">
					<!-- =====  Blog ===== -->
					<div id="Blog" class="mt_50">
						<div class="heading-part mb_10 ">
							<h2 class="main_title">Tin mới nhất</h2>
						</div>
						<div class="blog-contain box">
							<div class="blog owl-carousel ">
								<div class="item">
									<div class="box-holder">
										<div class="thumb post-img">
											<a href="#"> <img src="${base }/images/blog/blog_img_01.jpg" alt="themini">
											</a>
											<div class="date-time text-center">
												<div class="day">11</div>
												<div class="month">Aug</div>
											</div>
											<div class="post-image-hover"></div>
											<div class="post-info">
												<h6 class="mb_10 text-uppercase">
													<a href="single_blog.html">Fashions fade, style is eternal</a>
												</h6>
												<p>Aliquam egestas pellentesque est. Etiam a orci Nulla id enim feugiat ligula ullamcorper scelerisque. Morbi eu luctus nisl.</p>
												<div class="view-blog">
													<div class="write-comment pull-left">
														<a href="single_blog.html"> 0 Bình luận</a>
													</div>
													<div class="read-more pull-right">
														<a href="single_blog.html"> <i class="fa fa-link"></i> xem thêm
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="box-holder">
										<div class="thumb post-img">
											<a href="#"> <img src="${base }/images/blog/blog_img_02.jpg" alt="themini">
											</a>
											<div class="date-time text-center">
												<div class="day">11</div>
												<div class="month">Aug</div>
											</div>
											<div class="post-image-hover"></div>
											<div class="post-info">
												<h6 class="mb_10 text-uppercase">
													<a href="single_blog.html">Fashions fade, style is eternal</a>
												</h6>
												<p>Aliquam egestas pellentesque est. Etiam a orci Nulla id enim feugiat ligula ullamcorper scelerisque. Morbi eu luctus nisl.</p>
												<div class="view-blog">
													<div class="write-comment pull-left">
														<a href="single_blog.html"> 0 Bình luận</a>
													</div>
													<div class="read-more pull-right">
														<a href="single_blog.html"> <i class="fa fa-link"></i> xem thêm
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="box-holder">
										<div class="thumb post-img">
											<a href="#"> <img src="${base }/images/blog/blog_img_03.jpg" alt="themini">
											</a>
											<div class="date-time text-center">
												<div class="day">11</div>
												<div class="month">Aug</div>
											</div>
											<div class="post-image-hover"></div>
											<div class="post-info">
												<h6 class="mb_10 text-uppercase">
													<a href="single_blog.html">Fashions fade, style is eternal</a>
												</h6>
												<p>Aliquam egestas pellentesque est. Etiam a orci Nulla id enim feugiat ligula ullamcorper scelerisque. Morbi eu luctus nisl.</p>
												<div class="view-blog">
													<div class="write-comment pull-left">
														<a href="single_blog.html"> 0 Bình luận</a>
													</div>
													<div class="read-more pull-right">
														<a href="single_blog.html"> <i class="fa fa-link"></i> xem thêm
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="box-holder">
										<div class="thumb post-img">
											<a href="#"> <img src="${base }/images/blog/blog_img_04.jpg" alt="themini">
											</a>
											<div class="date-time text-center">
												<div class="day">11</div>
												<div class="month">Aug</div>
											</div>
											<div class="post-image-hover"></div>
											<div class="post-info">
												<h6 class="mb_10 text-uppercase">
													<a href="single_blog.html">Fashions fade, style is eternal</a>
												</h6>
												<p>Aliquam egestas pellentesque est. Etiam a orci Nulla id enim feugiat ligula ullamcorper scelerisque. Morbi eu luctus nisl.</p>
												<div class="view-blog">
													<div class="write-comment pull-left">
														<a href="single_blog.html"> 0 Bình luận</a>
													</div>
													<div class="read-more pull-right">
														<a href="single_blog.html"> <i class="fa fa-link"></i> xem thêm
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- =====  Blog end ===== -->
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
	<script src="${base }/js/jquery.firstVisitPopup.js"></script>
	<script src="${base }/js/custom.js"></script>
	<script src="${base }/js/jquery-ajax-email.js"></script>
	<script src="${base }/alertify-js/alertify.min.js"></script>
</body>

</html>