<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Women Shoes</title>
<style>
	* {
	  box-sizing: border-box;
	}
	.row::after {
	  content: "";
	  clear: both;
	  display: table;
	}
	.column {
	  float: left;
	  width: 33.33%;
	  padding: 5px;
	}
	b{
		font-size:30px;
	}

</style>
</head>
<body align="center">
	<jsp:include page="header.jsp"/>
	<a href="productsboy" style="text-decoration:none;font-size:30px;color:Black">Men</a>&emsp;
	<a href="productsgirl" style="text-decoration:none;font-size:30px;color:Black">Women</a><br><br>
	<div class="row">
		<div class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/nikegirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Nike</b></a>
		</div>
		<div class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/adidasgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Adidas</b></a>
		</div>
		<div class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/reebokgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Reebok</b></a>
		</div>
	</div><br><br>
	<div class="row">
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/pumagirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Puma</b></a>
		</div>
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/skechersgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Skechers</b></a>
		</div>
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/newbalancegirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>New Balance</b></a>
		</div>
	</div><br><br>
	<div class="row">
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/underarmourgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Under Armour</b></a>
		</div>
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/xtepgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Xtep</b></a>
		</div>
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/asicsgirl.png" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Asics</b></a>
		</div>
	</div><br><br>
	<div class="row">
		<div align="center" class="column">
			<a href="nikegirl.jsp" style="color:Black"><img src="images/girl/brooksgirl.jpg" style="width:50%;height:50%;border:1px solid"/><br>
			<b>Brooks</b></a>
		</div>
	</div>
</body>
</html>