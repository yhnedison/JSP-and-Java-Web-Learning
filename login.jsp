<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<script src="js/validate.js"></script>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>User Loginin</h2>
	<form action="login_process.jsp" name="form1" method="post" onsubmit="return isValidate2(form1)">
		User ID: <input type="text" name="userid"> <br>
		Password: <input type="password" name="userpass"> <br>
		<input type="reset" value="Reset">
		<input type="submit" name="Submit"> <br>
	</form>
</body>
</html>