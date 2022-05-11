<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
	td{
		font-size:20px;
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
	<c:set var="total" value="${0}" />
	<c:forEach items="${cart }" var="cart" varStatus="status" step="1"
		begin="0">
		<c:set var="total" value="${total + cart.mrp}" />
	</c:forEach>
	<form action="ordersuccess" method="post">
		<table align="center">
			<tr>
				<td colspan="2"><h2>Payee Details</h2></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Name:</td>
				<td ><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Email:</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Mobile:</td>
				<td><input type="text" name="mobile" /></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Location:</td>
				<td><input type="text" name="location" /></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Date:</td>
				<td><input id="date" type="date" name="date" ></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Price:</td>
				<td><input type="text" value="${total}" name="price" readonly /></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Proceed to Pay" class="button">
	</form>
</body>
</html>