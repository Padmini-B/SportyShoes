<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Women Shoes</title>
<style>
	.col1 {
	positon: absolute;
	margin-left: 10px;
	padding: 5px;
	width:40%;
	height:40%;
}

.col2 {
	position: absolute;
	margin-left: 400px;
	width:40%;
	height:80%;
}

.col3 {
	position:absolute;
	margin-left: 800px;
	padding: 10px;
	width:40%;
	height:50%;
}
	.button{
		border:none;
		font-size: 16px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color:white;
	}
	.button:hover{
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	}
	b{
		font-size:20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="header.jsp"/>
	<a href="productsboy" style="text-decoration:none;font-size:30px;color:Black">Men</a>&emsp;
	<a href="productsgirl" style="text-decoration:none;font-size:30px;color:Black">Women</a>
	<c:forEach items="${productsg}" var="pg" varStatus="status" step="1" begin="0">
		<div class="col${status.index % 3 + 1}">
			<c:if test="${pg.category=='women'}">
				<a href="" style="color:Black"><img src="<c:url value="${pg.image}"/>" style="width: 40%; height: 60%; border: 1px solid"/>
				<br><b>Brand: ${pg.brand}<br>Category: ${pg.category}<br>Mrp: ${pg.mrp}</b><br><br></a>
				<form action="addtocart" method="post">
					<input type="hidden" id="id" name="id" value="${pg.id}"/>
					<input type="hidden" id="brand" name="brand" value="${pg.brand}"/>
					<input type="hidden" id="mrp" name="mrp" value="${pg.mrp}"/>
					<input type="hidden" id="category" name="category" value="${pg.category}"/>
					<input type="hidden" id="description" name="description" value="${pg.description}"/>
					<input type="hidden" id="image" name="image" value="${pg.image}"/>
					<button class="button" type="submit">Add to Cart</button>
				</form>
				<br><br><br>
			</c:if>
		</div>
	</c:forEach>
</body>
</html>