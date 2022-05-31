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
							<td class="text-right" colspan="4"><strong>Phí vận
									chuyển cố định:</strong></td>
							<td class="text-right"><fmt:formatNumber value="30000"
									type="currency" /></td>
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
					<input type="button" data-loading-text="Loading..." class="btn"
						id="button-confirm" value="Xác nhận đơn hàng">
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose>