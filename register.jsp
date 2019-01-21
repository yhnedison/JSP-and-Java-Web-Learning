<%@ page pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%>

<script  type="text/javascript" src="js/validate.js">
</script>

<html>
<head>
<title>Register Page</title>
</head>

<body>
	<h2 align="center">Please register</h2>
	<form name="form1" action="register_confirm.jsp" method="post" onsubmit="return isValidate(form1)">
		<table align="center">
			<tr>
				<td>ID:</td>
				<td>
					<input type="text" name="userid" value="abcdef">
					length should be 6-8
				</td>
			</tr>

			<tr>
				<td>Password:</td>
				<td>
					<input type="password" name="userpass" value="123456">
					length 6-8, cannot be same as ID
				</td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td>
					<input type="password" name="userpass2" value="123456">
				</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>
					<input type="text" name="email" value="asdf@gmail.com">
				</td>
			</tr>

			<tr>
				<td>Education:</td>
				<td>
					<input type="radio" name="degree" value="Highschool">
					Highschool
					<input type="radio" name="degree" value="BS" checked>
					BS
					<input type="radio" name="degree" value="MS">
					MS
					<input type="radio" name="degree" value="Dr">
					Doctor
					<input type="radio" name="degree" value="Other">
					Other
				</td>
			</tr>

			<tr>
				<td>Location:</td>
				<td>
					<select name="location">
						<option value="US">US</option>
						<option value="otherloc">Other</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Birthday</td>
				<td><input type="date" name="birthday" value="1980-01-01"></td> 
			</tr>
			
			<tr>
				<td><input type="reset" value="Reset"></td>
				<td><input type="submit" value="Submit"></td> 
			</tr>

		</table>
	</form>
	
	<h2>HTTP Request Headers Received</h2>
    <table>
        <% Enumeration enumeration = request.getHeaderNames(); while (enumeration.hasMoreElements()) { String name=(String) enumeration.nextElement(); String value = request.getHeader(name); %>
            <tr>
                <td>
                    <%=name %>
                </td>
                <td>
                    <%=value %>
                </td>
            </tr>
            <% } %>
    </table>
</body>
</html>