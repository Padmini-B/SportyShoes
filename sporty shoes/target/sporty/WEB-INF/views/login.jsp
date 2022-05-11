<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
	button {
	justify-content: center;
	background-color:black;
	width: 100%;
	color: white;
	padding: 10px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
	font-size:25px;
	font-family:normal;
}
form {
	border: 2px solid black;
	width: 45%;
	margin: 0 auto;
}

input[type=text], input[type=password] {
	justify-content: center;
	width: 100%;
	margin: 8px 0;
	padding: 12px 20px;
	display: inline-block;
	border: 2px solid black;
	box-sizing: border-box;
}

button:hover {
	opacity: 0.7;
}

.container {
	justify-content: center;
	padding: 15px;
	background-color: #F8F8F8;
}
</style>
</head>
<body style="background-color: #F8F8F8">
	<br>
	<br>
	<h1 align="center" style="font-size: 40px;">Sporty Shoes</h1>
	<form action="home" method="POST">
		<div class="container">
			<label>Username : </label> <br /> <input type="text"
				placeholder="Enter Username" name="username"> <br />
			<label>Password : </label> <br /> <input type="password"
				placeholder="Enter Password" name="password"> <br />
			<button type="submit" style="font-style: normal;">Login</button>
		</div>
	</form>
</body>
</html>