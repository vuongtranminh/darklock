<!-- Tiếng Việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>

<c:choose>
	<c:when test="${cart.listCartItems == null  || cart.listCartItems.size() == 0 }">
		<p>Bạn chưa có sản phẩm nào</p>
	</c:when>
	<c:otherwise>
		<ul>
			<li>
				<table class="table table-striped">
					<tbody>
						<c:forEach items="${cart.listCartItems }" var="cartItem">
							<tr>
								<td class="text-center"><a href="#"><img
										src="${base }/upload${cartItem.productImage}"
										alt="iPod Classic" title="iPod Classic"></a></td>
								<td class="text-left product-name"><a href="#">${cartItem.productName }</a>
									<span class="text-left price"><fmt:formatNumber
											value="${cartItem.subTotalPrice }" type="currency" /></span> <input
									class="cart-qty" id="getInputQuantity" oninput="getInputQuantity();" name="product_quantity" min="1"
									value="${cartItem.quantity }" type="number"></td>
								<td class="text-center"><a class="close-cart" onclick="removeCart.RemoveCart('${cartItem.productId}');"><i
										class="fa fa-times-circle"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</li>
			<li>
				<table class="table">
					<tbody>
						<tr>
							<td class="text-right"><strong>Tạm tính</strong></td>
							<td class="text-right"><fmt:formatNumber
											value="${totalPrice }" type="currency" /></td>
						</tr>
<!-- 						<tr>
							<td class="text-right"><strong>Thuế (-2.00)</strong></td>
							<td class="text-right">$2.00</td>
						</tr>
						<tr>
							<td class="text-right"><strong>VAT (20%)</strong></td>
							<td class="text-right">$20.00</td>
						</tr>
						<tr>
							<td class="text-right"><strong>Tổng tiền</strong></td>
							<td class="text-right" id="abc">$2,122.00</td>
						</tr> -->
					</tbody>
				</table>
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