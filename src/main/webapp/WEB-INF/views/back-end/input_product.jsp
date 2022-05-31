<!-- hiển thị tiếng việt -->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- khai báo dùng spring -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<jsp:include page="/WEB-INF/views/back-end/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="alert alert-success text-center" role="alert">NHẬP THÔNG TIN SẢN PHẨM</div>
		<sf:form action="${base }/postproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
			<sf:hidden path="id" />
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">Thương hiệu</label>
				<sf:select path="brand.id" class="form-select" id="inputGroupSelect01">
					<sf:options items="${brands }" itemValue="id" itemLabel="name" />
				</sf:select>
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Tên sản phẩm</span>
				<sf:input type="text" path="productName" class="form-control" placeholder="Tên sản phẩm" aria-label="Username" aria-describedby="basic-addon1" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Giá</span>
				<sf:input type="number" path="price" class="form-control" placeholder="Giá gốc" aria-label="Price" aria-describedby="basic-addon1" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Giá sale</span>
				<sf:input type="number" path="salePrice" class="form-control" placeholder="Giá sale" aria-label="Saleprice" aria-describedby="basic-addon1" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Số lượng</span>
				<sf:input type="number" path="orderQuantity" class="form-control form-control quantity" min="0" step="1" value="0" placeholder="Số lượng" aria-label="Username" aria-describedby="basic-addon1" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Mô tả ngắn</span>
				<sf:textarea path="shortDescription" class="form-control" aria-label="With textarea" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Model</span>
				<sf:input type="text" path="model" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Overview</span>
				<sf:textarea path="overview" class="form-control" aria-label="With textarea" required="true" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Solution</span>
				<sf:textarea path="solution" class="form-control" aria-label="With textarea" />
			</div>
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupFile01">Avatar 1</label> <input type="file" name="avatarProductFirst" class="form-control" id="inputGroupFile01" required="true" />
			</div>
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupFile02">Avatar 2</label> <input type="file" name="avatarProductSecond" class="form-control" id="inputGroupFile02" required="true" />
			</div>
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupFile03">Avatar cart</label> <input type="file" name="avatarProductCart" class="form-control" id="inputGroupFile03" required="true" />
			</div>
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">Loại sản phẩm</label>
				<sf:select path="brand.classProduct.id" class="form-select" id="inputGroupSelect01">
					<sf:options items="${classes }" itemValue="id" itemLabel="name" />
				</sf:select>
			</div>
			<div class="form-check">
				<sf:checkbox class="form-check-input" path="newProduct" checked="true" value="1" id="flexCheckDefault" /> <label class="form-check-label" for="flexCheckDefault"> Sản phẩm mới </label>
			</div>
 			<div class="form-check">
				<sf:checkbox class="form-check-input" path="highlight" value="1" id="flexCheckDefault" /> <label class="form-check-label" for="flexCheckDefault"> Sản phẩm nổi bật </label>
			</div>
			<button type="submit" class="btn btn-outline-success">Success</button>
		</sf:form>
	</div>
	<script src="${base }/js/bootstrap.min.5.js"></script>
	<script src="${base }/js/jquery-3.5.1.js"></script>
</body>
</html>