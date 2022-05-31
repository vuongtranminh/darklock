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
	<c:when test="${cart.listCartItems == null || cart.listCartItems.size() == 0 }">
		<p>Bạn chưa có sản phẩm nào</p>
	</c:when>
	<c:otherwise>
		<table class="table table-bordered">
			<thead>
				<tr>
					<td class="text-center">Ảnh sản phẩm</td>
					<td class="text-left">Tên sản phẩm</td>
					<td class="text-left">Model</td>
					<td class="text-left">Số lượng</td>
					<td class="text-right">Giá</td>
					<td class="text-right">Tổng tiền</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cart.listCartItems }" var="cartItem">
					<tr>
						<td class="text-center"><a href="#"><img
								src="${base }/upload${cartItem.productImage}" alt="iPod Classic"
								title="iPod Classic"></a></td>
						<td class="text-left"><a href="product.html">${cartItem.productName }</a></td>
						<td class="text-left">${cartItem.productModel }</td>
						<td class="text-left">
							<div style="max-width: 200px;" class="input-group btn-block">
								<input type="text" class="form-control quantity" size="1"
									value="${cartItem.quantity }" name="quantity"
									id="product${cartItem.productId }"> <span
									class="input-group-btn">
									<button class="btn" type="button" onclick="editCart.EditCart('${cartItem.productId }');"
										title="" data-toggle="tooltip" data-original-title="Update">
										<i class="fa fa-sync"></i>
									</button>
									<button class="btn btn-danger" title="" data-toggle="tooltip"
										type="button" data-original-title="Remove" onclick="removeCart.RemoveCart('${cartItem.productId}');">
										<i class="fa fa-times-circle"></i>
									</button>
								</span>
							</div>
						</td>
						<td class="text-right"><fmt:formatNumber
								value="${cartItem.price }" type="currency" /></td>
						<td class="text-right" id="sub-total-price"><fmt:formatNumber
								value="${cartItem.subTotalPrice }" type="currency" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:otherwise>
</c:choose>