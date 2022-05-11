<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
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
	<jsp:include page="adminheader.jsp"/>
	<form action="add_product" method="post">
		<h1>Add Product</h1>
		<table align="center">
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>ID:</b> </td>
				<td align="left"><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>Brand:</b></td>
				<td align="left"><input type="text" name="brand"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>MRP</b></td>
				<td align="left"><input type="text" name="mrp"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>Category:</b></td>
		        <td align="left"><input type="text" name="category"/></td>
		    </tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>Description:</b></td>
		        <td align="left"><input type="text" name="description"/></td>
		    </tr>
		    <tr> 
				<td align="left" style="padding:10px 20px 10px 5px "><b>Image</b></td>
				<td align="left"><input type="text" name="image"/>
			</tr>
		</table><br><br>
		<button type="submit" class="button">Add</button>&ensp;
		<button type="reset" class="button">Reset</button>
	</form><br><br>
	<b>${result}</b>
</body>
</html>