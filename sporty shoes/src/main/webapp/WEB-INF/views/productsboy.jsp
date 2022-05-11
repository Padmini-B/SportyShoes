<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Men Shoes</title>
<style>
	.col1 {
		float:left;
		margin-left:0px;
		padding: 10px;
		width:40%;
		height:40%;
	}
	
	.col2 {
		position:absolute;
		margin-left: 350px;
		padding:10px;
		width:40%;
		height:80%;
	}
	.col3 {
		position:right;
		margin-left: 750px;
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
	<jsp:include page="header.jsp" />
	 <a href="productsboy"
		style="text-decoration: none; font-size: 30px; color: Black">Men</a>&emsp;
	<a href="productsgirl"
		style="text-decoration: none; font-size: 30px; color: Black">Women</a>
		<br><br>
	<c:forEach items="${products}" var="pb" varStatus="status" step="1" begin="0">
		<div class="col${status.index % 3 + 1}">
			<c:if test="${pb.category=='men'}">
				<a href="" style="color:Black"><img src="<c:url value="${pb.image}"/>" style="width: 50%; height: 50%; border: 1px solid"/>
				<br><b>Brand: ${pb.brand}<br>Category: ${pb.category}<br>Mrp: ${pb.mrp}</b><br><br><br></a>
				<form action="addtocart" method="post">
					<input type="hidden" id="id" name="id" value="${pb.id}"/>
					<input type="hidden" id="brand" name="brand" value="${pb.brand}"/>
					<input type="hidden" id="mrp" name="mrp" value="${pb.mrp}"/>
					<input type="hidden" id="category" name="category" value="${pb.category}"/>
					<input type="hidden" id="description" name="description" value="${pb.description}"/>
					<input type="hidden" id="image" name="image" value="${pb.image}"/>
					<button class="button" type="submit">Add to Cart</button>
				</form>
				<br><br>
			</c:if>
		</div>
	</c:forEach>
</body>
</html>