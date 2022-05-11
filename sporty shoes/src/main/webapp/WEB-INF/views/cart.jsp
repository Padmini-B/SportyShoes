<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
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
		margin-left: 380px;
		padding:10px;
		width:40%;
		height:80%;
	}
	.col3 {
		position:right;
		margin-left: 780px;
		padding: 10px;
		width:40%;
		height:50%;
	}
	b{
		font-size:20px;
	}
	.button{
		border:none;
		font-size: 16px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color:white;
		bottom: 10px;
		position:center;
	}
	.button:hover{
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	}
</style>
</head>
<body align="center">
	<jsp:include page="header.jsp"/>
	<br>
	<c:forEach items="${cart}" var="cart" varStatus="status" step="1" begin="0">
		<div class="col${status.index % 3 + 1}">
				<img src="<c:url value="${cart.image}"/>" style="width: 50%; height: 50%; border: 1px solid"/>
				<br><b>Brand: ${cart.brand}<br>Category: ${cart.category}<br>Mrp: ${cart.mrp}</b><br><br>
		</div>
	</c:forEach><br><br><br><br><br>
	<a class="button" href="buy" style="color:white;align="center">Buy</a>
</body>
</html>