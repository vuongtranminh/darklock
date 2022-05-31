<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="card-header">
	Đơn hàng ngày ${saleorder.createdDate } <strong>( <c:choose>
			<c:when test="${saleorder.orderStatus == 0}">
															Chưa xác nhận
														</c:when>
			<c:when test="${saleorder.orderStatus == 1}">
															Chờ giao hàng
														</c:when>
			<c:otherwise>
															Đã giao hàng
														</c:otherwise>
		</c:choose> )
	</strong>
</div>
<div class="card-body">
	<div class="alert alert-primary with-icon mb-0">
		<strong>Họ tên khách hàng: </strong>${saleorder.customerName }</div>
	<div class="alert alert-primary with-icon mb-0">
		<strong>Số điện thoại: </strong>${saleorder.customerPhone }</div>
	<div class="alert alert-primary with-icon mb-0">
		<strong>Email: </strong>${saleorder.customerEmail }</div>
	<div class="alert alert-primary with-icon mb-0">
		<strong>Địa chỉ: </strong>${saleorder.customerAddress }</div>
	<div class="alert alert-primary with-icon mb-0">
		<strong>Mã bưu điện: </strong>${saleorder.customerPostCode }</div>
	<div class="alert alert-primary with-icon mb-0">
		<strong>Quốc gia: </strong>${saleorder.customerCountry }</div>
	<div class="alert alert-primary with-icon mb-1">
		<strong>Tỉnh / Thành phố: </strong>${saleorder.customerRegionOrState }</div>
	<div class="alert alert-primary with-icon mb-2">
		<strong>Sản phẩm: </strong>
	</div>
	<div class="table-responsive">
		<table class="table mb-0 table-borderless">
			<thead>
				<tr>
					<th scope="col">Product Name</th>
					<th scope="col">Model</th>
					<th scope="col">Quantity</th>
					<th scope="col">Unit Price</th>
					<th scope="col">Total</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${saleorder.listSaleOrderProducts }"
					var="cartItem">
					<tr>
						<td>${cartItem.product.productName }</td>
						<td>${cartItem.product.model }</td>
						<td>${cartItem.quality }</td>
						<td><fmt:formatNumber value="${cartItem.product.price }"
								type="currency" /></td>
						<td><fmt:formatNumber value="${cartItem.subTotalPrice }"
								type="currency" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4"><strong>Tạm tính:</strong></td>
					<td><fmt:formatNumber value="${saleorder.total - 30000 }"
							type="currency" /></td>
				</tr>
				<tr>
					<td colspan="4"><strong>Phí vận chuyển cố định:</strong></td>
					<td><fmt:formatNumber value="30000" type="currency" /></td>
				</tr>
				<tr>
					<td colspan="4"><strong>Tổng tiền:</strong></td>
					<td><fmt:formatNumber value="${saleorder.total}"
							type="currency" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<c:choose>
		<c:when test="${saleorder.orderStatus == 0}">
			<div class="d-flex justify-content-end mt-3">
				<button class="btn btn-info btn-icon-animation" onclick="updateSaleOrderConfirm(${saleorder.id });"> Xác nhận
					đơn hàng <span class="btn-icon icofont-plus"></span>
				</button>
			</div>
		</c:when>
		<c:when test="${saleorder.orderStatus == 1}">
			<div class="d-flex justify-content-end mt-3">
				<button class="btn btn-info btn-icon-animation" onclick="updateSaleOrderDelivery(${saleorder.id });"> Giao hàng <span
					class="btn-icon icofont-plus"></span>
				</button>
			</div>
		</c:when>
		<c:otherwise>
			<div class="d-flex justify-content-end mt-3">
				<button type="button" class="btn btn-info btn-icon-animation"
					disabled="disabled">Đơn hàng đã được giao</button>
			</div>
		</c:otherwise>
	</c:choose>
</div>