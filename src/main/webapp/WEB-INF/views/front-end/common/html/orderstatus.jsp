<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>

<c:choose>
	<c:when test="${listSaleOrders == null ||listSaleOrders.size() == 0 }">
		<div class="panel-body">Bạn chưa có đơn hàng nào</div>
	</c:when>
	<c:otherwise>
		<c:forEach items="${listSaleOrders }" var="saleOrder">
			<div class="panel panel-default ">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse${saleOrder.id }">Đơn hàng ngày
							${saleOrder.createdDate } <strong>(<c:choose>
									<c:when test="${saleOrder.orderStatus == 0}">
															Chưa xác nhận
														</c:when>
									<c:when test="${saleOrder.orderStatus == 1}">
															Chờ giao hàng
														</c:when>
									<c:otherwise>
															Đã giao hàng
														</c:otherwise>
								</c:choose>)
						</strong> <i class="fa fa-caret-down"></i>
						</a>
					</h4>
				</div>
				<div id="collapse${saleOrder.id }"
					class="panel-collapse collapse 
					<c:if test="${saleOrder.orderStatus != 2}">
						in
					</c:if>
					">


					<div class="panel-body">
						<p>
							<strong>Họ tên khách hàng: </strong> ${saleOrder.customerName }
						</p>
						<p>
							<strong>Số điện thoại: </strong> ${saleOrder.customerPhone }
						</p>
						<p>
							<strong>Email: </strong> ${saleOrder.customerEmail }
						</p>
						<p>
							<strong>Địa chỉ: </strong> ${saleOrder.customerAddress }
						</p>
						<p>
							<strong>Mã bưu điện: </strong> ${saleOrder.customerPostCode }
						</p>
						<p>
							<strong>Quốc gia: </strong> ${saleOrder.customerCountry }
						</p>
						<p>
							<strong>Tỉnh / Thành phố: </strong>
							${saleOrder.customerRegionOrState }
						</p>
						<p>
							<strong>Sản phẩm: </strong>
						</p>
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
									<c:forEach items="${saleOrder.listSaleOrderProducts }"
										var="cartItem">
										<tr>
											<td class="text-left"><a
												href="http://localhost/opc001/index.php?route=product/product&amp;product_id=46">${cartItem.product.productName }</a></td>
											<td class="text-left">${cartItem.product.model }</td>
											<td class="text-right">${cartItem.quality }</td>
											<td class="text-right"><fmt:formatNumber
													value="${cartItem.product.price }" type="currency" /></td>
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
												value="${saleOrder.total - 30000 }" type="currency" /></td>
									</tr>
									<tr>
										<td class="text-right" colspan="4"><strong>Phí
												vận chuyển cố định:</strong></td>
										<td class="text-right"><fmt:formatNumber value="30000"
												type="currency" /></td>
									</tr>
									<tr>
										<td class="text-right" colspan="4"><strong>Tổng
												tiền:</strong></td>
										<td class="text-right"><fmt:formatNumber
												value="${saleOrder.total}" type="currency" /></td>
									</tr>
								</tfoot>
							</table>
						</div>
						<c:choose>
							<c:when test="${saleOrder.orderStatus == 0}">
								<div class="buttons">
									<div class="pull-right">
										<input type="button" data-loading-text="Loading..."
											class="btn" id="button-confirm" value="Hủy đơn hàng"
											onclick="removeSaleOrder(${saleOrder.id });">
									</div>
								</div>
							</c:when>
							<c:when test="${saleOrder.orderStatus == 1}">
								<div class="buttons">
									<div class="pull-right">
										<input type="button" disabled="disabled"
											data-loading-text="Loading..." class="btn"
											id="button-confirm" value="Chờ giao hàng">
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<input type="button" disabled="disabled"
									data-loading-text="Loading..." class="btn" id="button-confirm"
									value="Đơn hàng đã được giao">
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>