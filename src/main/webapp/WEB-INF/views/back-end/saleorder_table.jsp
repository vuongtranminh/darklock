<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Coda - HTML Bootstrap Admin Template</title>
<meta content="Coda" name="keywords">
<meta content="" name="description">
<meta content="" name="author">
<meta content="width=device-width,initial-scale=1" name="viewport">
<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/back-end/common/variables.jsp"></jsp:include>
<!-- Favicon -->
<link href="${base }/assets/images/favicon.ico" rel="shortcut icon">
<!-- Plugins CSS -->
<link href="${base }/assets/css/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${base }/assets/css/dragula.min.css" rel="stylesheet">
<link href="${base }/assets/css/icofont.min.css" rel="stylesheet">
<link href="${base }/assets/css/rating-theme.css" rel="stylesheet">
<link href="${base }/assets/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link href="${base }/assets/css/simple-line-icons.css" rel="stylesheet">
<link href="${base }/assets/css/selects.min.css" rel="stylesheet">
<link href="${base }/assets/css/typehead.min.css" rel="stylesheet">
<link href="${base }/assets/css/chartjs.css" rel="stylesheet">
<!-- Theme CSS -->
<link href="${base }/assets/css/style_data_tables.css" rel="stylesheet">
</head>

<body class="vertical layout">
	<!-- Loader -->
	<div class="overlay"></div>
	<div class="loader loader-4">
		<span></span> <span></span> <span></span> <span></span> <span></span>
	</div>
	<!-- end Loader -->
	<div class="layout-wrap">
		<!-- Horizontal navbar -->
		<div class="nav-bar dark">
			<div class="nav-bar-wrap">
				<div class="nav-content">
					<div class="row">
						<div class="col col-auto toggle-button-col">
							<div id="toggle-menu" class="toggle-sidebar">
								<div class="bar"></div>
								<div class="bar"></div>
								<div class="bar"></div>
							</div>
						</div>
						<div class="col title-col">
							<form id="page-search" class="search">
								<div class="input-container">
									<span class="search-icon icofont icofont-search"></span> <input
										placeholder="Type page title to search" class="search-input">
								</div>
							</form>
							<h1 id="page-title" class="page-title">Data tables</h1>
						</div>
						<div class="col col-auto actions-col">
							<div class="nav-actions">
								<div class="item toggle-search-btn">
									<a class="nav-link d-none d-md-block" id="toggle-search"
										href="#"><i class="icon icofont icofont-search"></i></a>
								</div>
								<div class="item">
									<a class="nav-link" data-toggle="dropdown" href="#"><i
										class="icon icofont icofont-notification"></i> <span
										class="marker blue"></span></a>
									<div class="dropdown-menu dropdown-menu-right">
										<div class="menu-header">
											<h4 class="menu-title">Notifications</h4>
										</div>
										<ul class="list menu-list">
											<li>
												<div class="icon">
													<i class="icofont icofont-thumbs-up"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">Sara Crouch liked your photo </span><span
															class="date">10 minutes ago</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-business-man"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">New user registered</span> <span
															class="date">23 minutes ago</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-share"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">Amanda Lie shared your post</span> <span
															class="date">25 minutes ago</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-business-man"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">New user registered</span> <span
															class="date">23 minutes ago</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-email"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">You have new message</span> <span
															class="date">58 minutes ago</span>
													</div>
											</a>
											</li>
										</ul>
										<div class="menu-footer">
											<a href="#">View all notifications</a>
										</div>
									</div>
								</div>
								<div class="item">
									<a class="nav-link" data-toggle="dropdown" href="#"><i
										class="icon icofont icofont-calendar"><span class="marker"></span></i></a>
									<div class="dropdown-menu dropdown-menu-right">
										<div class="menu-header">
											<h4 class="menu-title">Events</h4>
										</div>
										<ul class="list menu-list">
											<li>
												<div class="icon">
													<i class="icofont icofont-brand-android-robot"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">Android event</span> <span class="date">1
															Dec 2020</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-brand-java"></i>
												</div> <a href="#">
													<div class="content d-flex flex-column">
														<span class="desc">Java dev conference</span> <span
															class="date">15 Dec 2020</span>
													</div>
											</a>
											</li>
											<li>
												<div class="icon">
													<i class="icofont icofont-brand-whatsapp"></i>
												</div> <a href="#">
													<div class="content">
														<span class="desc">Discussion about the app</span> <span
															class="date">22 Dec 2020</span>
													</div>
											</a>
											</li>
										</ul>
										<div class="menu-footer">
											<a href="#">View all events</a>
										</div>
									</div>
								</div>
								<div class="item">
									<a class="nav-link" data-toggle="dropdown" href="#"><i
										class="icon icofont icofont-user"></i></a>
									<div
										class="dropdown-menu dropdown-menu-right mini-menu profile">
										<div class="avatar-block">
											<img alt="user-avatar"
												src="${base }/assets/content/avatar-55-2.jpg"> <span
												class="name">Anna Hamens</span>
										</div>
										<ul class="menu-list">
											<li><a href="#" class="profile-link"><i
													class="icofont icofont-id-card"></i> Profile</a></li>
											<li><a href="#" class="profile-link"><i
													class="icofont icofont-calendar"></i> Inbox</a></li>
											<li><a href="#" class="profile-link"><i
													class="icofont icofont-calendar"></i> Calendar</a></li>
											<li><a href="#" class="profile-link"><i
													class="icofont icofont-settings"></i> Settings</a></li>
											<li><a href="#" class="profile-link"><i
													class="icofont icofont-sign-out"></i> Log Out</a></li>
										</ul>
									</div>
								</div>
								<div class="items-overlay"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end Horizontal navbar -->
		<!-- Sidebar -->
			<jsp:include page="/WEB-INF/views/back-end/common/html/header.jsp"></jsp:include>
		<!-- end Sidebar -->
		<!-- Settings panel -->
		<div id="settings-overlay" class="settings-overlay"></div>
		<div id="settings-panel" class="settings-panel">
			<div class="title-box">
				<span><h4 class="title">Settings</h4></span>
			</div>
			<div class="switcher-box">
				<div class="switcher-block">
					<h6 class="mb-2 mt-0">Layout</h6>
					<select id="layout-select" class="selectpicker"><option
							value="vertical">Vertical layout</option>
						<option value="horizontal">Horizontal layout</option></select>
					<h6 class="mb-2">Width</h6>
					<select id="width-select" class="selectpicker mb-3"><option
							value="full-width">Full width</option>
						<option value="boxed">Boxed</option></select>
					<h6 class="mb-2">Topbar color</h6>
					<div id="nav-color-toggle" class="switcher mb-3">
						<button data-color="light" class="btn color-btn"></button>
						<button data-color="dark" class="btn color-btn dark active"></button>
					</div>
					<h6 class="mb-2">Vertical nav color</h6>
					<div id="sidenav-color-toggle" class="switcher">
						<button data-color="light" class="btn color-btn"></button>
						<button data-color="dark" class="btn color-btn dark active"></button>
					</div>
				</div>
				<div class="switcher-block">
					<h6 class="mb-2">Display topbar search</h6>
					<div class="custom-control custom-switch mb-3">
						<input id="search-switch" type="checkbox"
							class="custom-control-input" checked="checked"> <label
							class="custom-control-label" for="search-switch"></label>
					</div>
				</div>
			</div>
			<button id="toggle-btn" class="btn btn-primary toggle-btn">
				<span class="icofont icofont-gears"></span>
			</button>
		</div>
		<!-- end Settings panel -->
		<main class="main">
			<div class="content-container">
				<div class="content">
					<div class="card mb-0">
						<div class="card-header">Pagination</div>
						<div class="card-body">
							<div class="dataTables_wrapper dt-bootstrap4 no-footer">
								<table class="table data-table dataTable no-footer"
									data-paging="true" data-info="true" data-searching="true"
									id="DataTables_Table_2" role="grid"
									aria-describedby="DataTables_Table_2_info" style="width: 100%;">
									<thead>
										<tr role="row">
											<th class="sorting_asc" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Name: activate to sort column descending"
												aria-sort="ascending">User ID</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Position: activate to sort column ascending">City</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Office: activate to sort column ascending">Phone</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Age: activate to sort column ascending">Date</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Date: activate to sort column ascending">Total</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending">Status</th>
											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_2" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending">Manipulation</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${saleorders }" var="saleorder">
											<tr role="row" class="odd">
												<td class="sorting_1">${saleorder.userId }</td>
												<td>${saleorder.customerRegionOrState }</td>
												<td>${saleorder.customerPhone }</td>
												<td>${saleorder.createdDate }</td>
												<td><fmt:formatNumber value="${saleorder.total }"
														type="currency" /></td>
												<td>
												<c:choose>
														<c:when test="${saleorder.orderStatus == 0}">
															Chưa xác nhận
														</c:when>
														<c:when test="${saleorder.orderStatus == 1}">
															Chờ giao hàng
														</c:when>
														<c:otherwise>
															Đã giao hàng
														</c:otherwise>
													</c:choose>
												</td>
												<td><a href="${base }/admin/saleorder/detail/${saleorder.id }"
													class="mr-4 btn btn-info btn-icon-animation">Detail <span
														class="btn-icon icofont-plus"></span></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Foooter -->
			<div class="app-footer">
				<div class="footer-wrap">
					<p>Copyright © 2020 typeCode. All rights reserved.</p>
				</div>
			</div>
			<!-- end Footer -->
		</main>
		<script src="${base }/assets/js/lib/jquery-3.3.1.min.js"></script>
		<script src="${base }/assets/js/lib/jquery-migrate-1.4.1.min.js"></script>
		<script src="${base }/assets/js/lib/jquery.barrating.min.js"></script>
		<script src="${base }/assets/js/lib/popper.min.js"></script>
		<script src="${base }/assets/js/lib/bootstrap.min.js"></script>
		<script src="${base }/assets/js/lib/typehead.min.js"></script>
		<script src="${base }/assets/js/lib/echarts.min.js"></script>
		<script src="${base }/assets/js/lib/jquery.dataTables.min.js"></script>
		<script src="${base }/assets/js/lib/morris.min.js"></script>
		<script src="${base }/assets/js/lib/raphael.min.js"></script>
		<script src="${base }/assets/js/lib/dragula.js"></script>
		<script src="${base }/assets/js/lib/chart.min.js"></script>
		<script src="${base }/assets/js/lib/select.js"></script>
		<script src="${base }/assets/js/main.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBSvo0x8v3C6aFWcSi2zooOC9tqGCOqCj4&callback=initMap"
			async defer="defer"></script>
	</div>
</body>

</html>