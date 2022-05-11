<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
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
</style>
</head>
<body align="center">
	<jsp:include page="header.jsp"/>
	<br>
	<h1>Your Orders</h1>
	<c:forEach items="${orders}" var="order" varStatus="status" step="1" begin="0">
		<div class="col${status.index % 3 + 1}">
				<img src="<c:url value="${order.image}"/>" style="width: 50%; height: 50%; border: 1px solid"/>
				<br><b>Brand: ${order.brand}<br>Category: ${order.category}<br>Mrp: ${order.price}</b><br><br>
		</div>
	</c:forEach>
</body>
</html>