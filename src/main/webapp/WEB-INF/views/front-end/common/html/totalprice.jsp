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
		<!-- <p>Bạn chưa có sản phẩm nào</p> -->
	</c:when>
	<c:otherwise>
		<div class="col-sm-4 col-sm-offset-8">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td class="text-right"><strong>Tạm tính:</strong></td>
						<td class="text-right"><fmt:formatNumber
								value="${totalPrice }" type="currency" /></td>
					</tr>
					<tr>
						<td class="text-right"><strong>Phí vận chuyển cố định:</strong></td>
						<td class="text-right"><fmt:formatNumber value="30000"
								type="currency" /></td>
					</tr>
					<tr>
						<td class="text-right"><strong>Tổng tiền:</strong></td>
						<td class="text-right"><fmt:formatNumber
								value="${totalPrice + 30000}" type="currency" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</c:otherwise>
</c:choose>