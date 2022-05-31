<%@page
	import="org.springframework.security.core.userdetails.UserDetails"%>
<%@page import="com.tranminhvuong.darklock.entities.Users"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>

<!-- Tiếng Việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<%
boolean isLogined = false;
/* Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); */
if (principal instanceof UserDetails) {
	isLogined = true;
}
%>

<div id="side-bar" class="side-bar dark">
	<div class="side-bar-wrap">
		<div class="logo">
			<div class="logo-wrap">
				<img alt="logo" class="logo-img" height="40"
					src="${base }/assets/images/logo.svg">
			</div>
		</div>
		<div class="close-btn-block">
			<a id="close-btn" class="close-btn icofont icofont-close-line"></a>
		</div>
		<div class="menu-wrap vertical">
			<div class="app-menu">
				<ul class="menu-ul">
					<li class="menu-item"><span class="group-title">Main</span></li>
					<li class="menu-item has-sub"><a class="item-link" href=""><span
							class="link-icon icofont-ui-home"></span> <span class="link-text">Dashboards</span>
							<span class="link-badge badge-sm badge badge-info">4</span> <i
							class="link-caret icofont icofont-double-right"></i></a>
						<ul class="sub">
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/index"><span class="link-text">Index</span></a></li>
						</ul></li>
					<li class="menu-item has-sub"><a class="item-link" href="#"><span
							class="link-icon icofont-database"></span> <span
							class="link-text">Apps</span> <i
							class="link-caret icofont icofont-double-right"></i></a>
						<ul class="sub">
							<li class="menu-item"><a class="item-link"
								href="${base }/home"><span class="link-text">User index</span></a></li>
						</ul></li>
					<li class="menu-item"><span class="group-title">UI Kit</span></li>
					<li class="menu-item has-sub"><a class="item-link" href="#"><span
							class="link-icon icofont-library"></span> <span class="link-text">UI
								Elements</span> <span class="link-badge badge-sm badge badge-danger">HOT</span>
							<i class="link-caret icofont icofont-double-right"></i></a></li>
					<li class="menu-item has-sub"><a class="item-link" href="#"><span
							class="link-icon icofont-id-card"></span> <span class="link-text">Forms</span>
							<span class="link-badge badge-sm badge badge-warning">NEW</span>
							<i class="link-caret icofont icofont-double-right"></i></a>
						<ul class="sub">
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/add/class"><span class="link-text">Type Form</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/add/brand"><span class="link-text">Brand Form</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/add/product"><span class="link-text">Product Form</span></a></li>
						</ul></li>
					<li class="menu-item has-sub"><a class="item-link" href="#"><span
							class="link-icon icofont-table"></span> <span class="link-text">Tables</span>
							<i class="link-caret icofont icofont-double-right"></i></a>
						<ul class="sub">
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/brand"><span class="link-text">Brand
										Table</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/class"><span class="link-text">Type
										Table</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/product"><span class="link-text">Product
										Table</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="${base }/admin/saleorder"><span class="link-text">Sale Order
										Table</span></a></li>
						</ul></li>
					<li class="menu-item"><span class="group-title">Pages</span></li>
					<li class="menu-item has-sub"><a class="item-link" href="#"><span
							class="link-icon icofont-bars"></span> <span class="link-text">Extra
								pages</span> <i class="link-caret icofont icofont-double-right"></i></a>
						<ul class="sub">
							<li class="menu-item"><a class="item-link"
								href="log-in.html"><span class="link-text">Log in</span></a></li>
							<li class="menu-item"><a class="item-link"
								href="sign-up.html"><span class="link-text">Sign up</span></a></li>
							<li class="menu-item"><a class="item-link" href="404.html"><span
									class="link-text">404 Page</span></a></li>
							<li class="menu-item"><a class="item-link" href="500.html"><span
									class="link-text">500 Page</span></a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="side-bar-overlay" id="side-bar-overlay"></div>
</div>