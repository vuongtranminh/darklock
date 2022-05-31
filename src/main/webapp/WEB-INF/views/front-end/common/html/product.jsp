<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>

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
								src="${base }/upload${product.avatarFirst }" alt="iPod Classic"
								title="iPod Classic" class="img-responsive" /> <img
								src="${base }/upload${product.avatarSecond }" alt="iPod Classic"
								title="iPod Classic" class="img-responsive" />
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
									class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
									class="fa fa-star-o fa-stack-1x"></i><i
									class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
									class="fa fa-star-o fa-stack-1x"></i><i
									class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
									class="fa fa-star-o fa-stack-1x"></i><i
									class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
									class="fa fa-star-o fa-stack-1x"></i><i
									class="fa fa-star fa-stack-x"></i></span>
							</div>
							<span class="price"><span class="amount"><span
									class="currencySymbol"></span> <fmt:formatNumber
										value="${product.salePrice }" type="currency" /></span> </span>
							<p class="product-desc mt_20 mb_60">More room to move. With
								80GB or 160GB of storage and up to 40 hours of battery life, the
								new iPod classic lets you enjoy up to 40,000 songs or up to 200
								hours of video or any combination wherever you go.Cover Flow.
								Browse through your music collection by flipping..</p>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</c:forEach>