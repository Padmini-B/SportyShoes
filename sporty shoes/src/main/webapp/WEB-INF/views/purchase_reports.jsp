<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Reports</title>
<style>
	.button {
		border: none;
		font-size: 20px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color: white;
	}
	
	.button:hover {
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
			rgba(0, 0, 0, 0.19);
	}
	
	td {
		font-size: 20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"/>
	<h1>Purchase Reports</h1>
	<br><br>
	<form action="filter">
		<table align="center">
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Date</td>
				<td align="left" style="padding:10px 20px 10px 5px "><input type="date" name="date"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Category</td>
				<td align="left" style="padding:10px 20px 10px 5px ">
					<select name="category">
						<option selected>Select</option>
						<option value="men">men</option>
						<option value="women">women</option>
					</select>
				</td>
			</tr>
		</table><br><br>
		<button type="submit" class="button">Filter</button>
	</form>
</body>
</html>