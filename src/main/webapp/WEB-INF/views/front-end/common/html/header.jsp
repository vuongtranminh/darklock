<%@page
	import="org.springframework.security.core.userdetails.UserDetails"%>
<%@page import="com.tranminhvuong.darklock.entities.Users"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>

<!-- Tiếng Việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
String usename = "Tài khoản";
Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
if (principal instanceof UserDetails) {
	usename = ((Users) principal).getUsername();
}
%>

<% boolean isLogined = false;
								/* Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); */
									if (principal instanceof UserDetails) {
										isLogined = true;
									}
									%>

<header id="header">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="header-top-left">
						<div class="contact">
							<span class="hidden-xs hidden-sm hidden-md">Đồng hồ chính hãng</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-8">
					<ul class="header-top-right text-right">
						<li class="account"><% if(!isLogined) { %><a href="${base }/user/login"><% } %> <%=usename%>
						<li class="exit-account"><a href="${base }/admin/index"> Admin
						</a></li>
						 <% if(isLogined) { %>
						<li class="exit-account"><a href="${base }/user_logout"> Đăng xuất
						</a></li>
						<% } %>
						<li class="language dropdown"><span class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button">Ngôn ngữ <span class="caret"></span>
						</span>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="#">Tiếng Việt</a></li>
								<li><a href="#">English</a></li>
								<li><a href="#">German</a></li>
							</ul></li>
						<li class="currency dropdown"><span class="dropdown-toggle" id="dropdownMenu12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button">Loại tiền <span class="caret"></span>
						</span>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu12">
								<li><a href="#">VND</a></li>
								<li><a href="#">£ Pound Sterling</a></li>
								<li><a href="#">$ US Dollar</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="main-search mt_40">
						<form action="${base }/danhmuc/search-all">
							<input id="searchText" name="searchText" value="${searchText}" placeholder="Tìm kiếm" class="form-control input-lg" autocomplete="off" type="text"> <span class="input-group-btn">
								<button type="submit" class="btn btn-default btn-lg">
									<i class="fas fa-search"></i>
								</button>
							</span>
						</form>
					</div>
				</div>
				<div class="navbar-header col-xs-6 col-sm-4">
					<a class="navbar-brand" href="${base }/index"> <img alt="themini" src="${base }/images/logo.png">
					</a>
				</div>
				<div class="col-xs-6 col-sm-4 shopcart">
					<div id="cart" class="btn-group btn-block mtb_40">
						<button type="button" class="btn" data-target="#cart-dropdown" data-toggle="collapse" aria-expanded="true">
							<span id="shippingcart">Giỏ hàng</span>
							<c:choose>
								<c:when test="${totalItem == null || totalItem == 0}">
									<span id="cart-total">mặt hàng (0) </span>
								</c:when>
								<c:otherwise>
									<span id="cart-total">mặt hàng (${totalItem }) </span>
								</c:otherwise>
							</c:choose>

						</button>
					</div>
					<div id="cart-dropdown" class="cart-menu collapse">
						<c:choose>
							<c:when test="${cart.listCartItems == null || cart.listCartItems.size() == 0 }">
								<p>Bạn chưa có sản phẩm nào</p>
							</c:when>
							<c:otherwise>
								<ul>
									<li>
										<table class="table table-striped">
											<tbody>
												<c:forEach items="${cart.listCartItems }" var="cartItem">
													<tr>
														<td class="text-center"><a href="#"><img src="${base }/upload${cartItem.productImage}" alt="iPod Classic" title="iPod Classic"></a></td>
														<td class="text-left product-name"><a href="#">${cartItem.productName }</a> <span class="text-left price"><fmt:formatNumber value="${cartItem.subTotalPrice }" type="currency" /></span> <input class="cart-qty" name="product_quantity" min="1" value="${cartItem.quantity }"
															type="number"></td>
														<td class="text-center"><a class="close-cart" onclick="removeCart.RemoveCart('${cartItem.productId}');"><i class="fa fa-times-circle"></i></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</li>
									<li>
										<%-- <%
										boolean isLogined = false;
										/* Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); */
										if (principal instanceof UserDetails) {
											isLogined = true;
										}
										%> <%
 if (!isLogined) {
 %> --%>
										<table class="table">
											<tbody>
												<tr>
													<td class="text-right"><strong>Tạm tính</strong></td>
													<td class="text-right"><fmt:formatNumber
											value="${totalPrice }" type="currency" /></td>
												</tr>
<!-- 												<tr>
													<td class="text-right"><strong>Thuế (-2.00)</strong></td>
													<td class="text-right">$2.00</td>
												</tr>
												<tr>
													<td class="text-right"><strong>VAT (20%)</strong></td>
													<td class="text-right">$20.00</td>
												</tr>
												<tr>
													<td class="text-right"><strong>Tổng tiền</strong></td>
													<td class="text-right">$2,122.00</td>
												</tr> -->
											</tbody>
										</table> <%-- <%
 }
 %> --%>
									</li>
									<li>
										<form action="${base }/cart">
											<input class="btn pull-left mt_10" value="Giỏ hàng" type="submit">
										</form>
										<form action="${base }/checkout">
											<input class="btn pull-right mt_10" value="Thủ tục" type="submit">
										</form>
									</li>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<nav class="navbar">
				<p>menu</p>
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
					<span class="i-bar"><i class="fa fa-bars"></i></span>
				</button>
				<div class="collapse navbar-collapse js-navbar-collapse">
					<ul id="menu" class="nav navbar-nav">
						<li><a href="${base }/index">Trang chủ</a></li>
						<li class="dropdown mega-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Đồng hồ chính hãng </a>
							<ul class="dropdown-menu mega-dropdown-menu row">
								<c:forEach items="${classProducts }" var="classProduct">
									<li class="col-md-3">
										<ul>
											<li class="dropdown-header">${classProduct.name }</li>
											<c:forEach items="${brands }" var="brand">
												<li><a href="#">${brand.shotDescription }</a></li>
											</c:forEach>
										</ul>
									</li>
								</c:forEach>
								<!-- <li class="col-md-3">
                                            <ul>
                                                <li class="dropdown-header">Đồng hồ nữ</li>
                                                <li><a href="#">Unique Features</a></li>
                                                <li><a href="#">Image Responsive</a></li>
                                                <li><a href="#">Auto Carousel</a></li>
                                                <li><a href="#">Newsletter Form</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Good Typography</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3">
                                            <ul>
                                                <li class="dropdown-header">Đồng hồ nam</li>
                                                <li><a href="#">Unique Features</a></li>
                                                <li><a href="#">Image Responsive</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Auto Carousel</a></li>
                                                <li><a href="#">Newsletter Form</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Good Typography</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3">
                                            <ul>
                                                <li class="dropdown-header">Đồng hồ đôi</li>
                                                <li><a href="#">Unique Features</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Image Responsive</a></li>
                                                <li><a href="#">Auto Carousel</a></li>
                                                <li><a href="#">Newsletter Form</a></li>
                                                <li><a href="#">Four columns</a></li>
                                                <li><a href="#">Good Typography</a></li>
                                            </ul>
                                        </li> -->
								<li class="col-md-3">
									<ul>
										<li id="myCarousel" class="carousel slide" data-ride="carousel">
											<div class="carousel-inner">
												<div class="item active">
													<a href="#"><img src="${base }/images/menu-banner1.jpg" class="img-responsive" alt="Banner1"></a>
												</div>
												<!-- End Item -->
												<div class="item">
													<a href="#"><img src="${base }/images/menu-banner2.jpg" class="img-responsive" alt="Banner1"></a>
												</div>
												<!-- End Item -->
												<div class="item">
													<a href="#"><img src="${base }/images/menu-banner3.jpg" class="img-responsive" alt="Banner1"></a>
												</div>
												<!-- End Item -->
											</div> <!-- End Carousel Inner -->
										</li>
										<!-- /.carousel -->
									</ul>
								</li>
							</ul></li>
						<li><a href="${base }/danhmuc">Đồng hồ</a></li>
						<li><a href="${base }/blog">Blog</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Giỏ hàng </a>
							<ul class="dropdown-menu">
								<li><a href="${base }/cart">Xem giỏ hàng</a></li>
								<li><a href="${base }/checkout">Thủ tục thanh toán</a></li>
								<li><a href="${base }/order">Đơn hàng</a></li>
							</ul></li>
						<li><a href="${base }/about">Giới thiệu</a></li>
						<li><a href="${base }/contact">Liên hệ</a></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</nav>
		</div>
	</div>
</header>