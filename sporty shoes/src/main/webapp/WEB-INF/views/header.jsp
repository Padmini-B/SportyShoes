<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<style>
	th
	{	
		background-color: black;
		color:white;
	}
	a{
		color:white;
		text-decoration: none;
	}
	th:hover{
		background-color: white;
		color:black;
	}
	a:hover{
		color:black;
	}
	.container {
		display:flex;
		align-items:center;
		justify-content:center;
	}
	.search-bar{
		width:100%;
		max-width:800px;
		background:rgba(255,255,255,0.2);
		display:flex;
		align-items:center;
		border-radius:10px;
		padding:3px 5px 3px 5px;
		backdrop-filter:blur(4px) saturate(180%);
	}
	.search-bar input{
		background:transparent;
		flex:1;
		border:0;
		outline:none;
		padding:5px 10px 5px 3px;
		font-size:20px;
		color:white;
	}
	::placeholder{
		color:white;
	}
	.search-bar button{
		border:0;
		border-radius:50%;
		height:32px;
		width:32px;
		background:transparent;
		cursor:pointer;
	}
</style>
</head>
<body>
	<table style="background-color: black; width:100%;heigth:300" >
		<tr>
			<th style="text-decoration: none; font-size: 40px; padding: 10px 0px 10px 0px; text-align: left;color:white;background-color: black;">
				Sporty Shoes
			</th>
			<th style="background-color: black;">
			<div class="container">
				<form action="" class="search-bar">
      				<input type="text" placeholder="Search.." name="search">
      				<button type="submit"><img src="<c:url value="/resources/images/search.png"/>" width="25px" height="25px"/></button>
    			</form></div>
			</th>
			<th style="text-decoration: none;padding: 10px 0px 10px 0px;text-align: center">
				<a href="homes" target=_top style="font-size: 30px;">Home</a>
			</th>
			<th style="padding: 10px 0px 10px 0px; text-align: center">
				<a href="products" target=_top style="font-size: 30px;">Products</a>
			</th>
			<th style="padding: 10px 0px 10px 0px; text-align: center">
				<a href="orders" target=_top style="font-size: 30px;c">Orders</a>
			</th>
			<th style="padding: 10px 0px 10px 0px; text-align: center">
				<a href="cart" target="_top" style="font-size: 30px;">Cart</a>
			</th>
			<th style="padding: 10px 0px 10px 0px; text-align:center">
				<a href="logout" target=_top style="font-size: 30px;">Sign out</a>
			</th>
		</tr>
	</table>
</body>
</html>