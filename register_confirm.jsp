<%@ page pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%>

<html>
<head>
<title>Confirm Registration Information</title>
</head>
<body>

	<h2 align="center">Confirm Registration Information</h2>
	<table border="1" align="center">
		<tr>
			<td>User ID</td>
			<td>${param.userid}</td>
		</tr>

		<tr>
			<td>Password</td>
			<td>${param["userpass"]}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${param.email}</td>
		</tr>
		<tr>
			<td>Brithday</td>
			<td>${param.birthday}</td>
		</tr>
		<tr>
			<td>Location</td>
			<td>${param.location}</td>
		</tr>
		<tr>
			<td>Education</td>
			<td>${param.degree}</td>
		</tr>
		<tr>
			<form name="form1" action="" method="post">
				<input type="hidden" name="userid" value="${param.userid}">
				<input type="hidden" name="username" value="${param.username}">
				<input type="hidden" name="userpass" value="${param.userpass}">
				<input type="hidden" name="local" value="${param.local}">
				<input type="hidden" name="phone" value="${param.phone}">
				<input type="hidden" name="email" value="${param.email}">
				<input type="hidden" name="address" value="${param.address}">
				<input type="hidden" name="comment" value="${param.comment}">
				<input type="hidden" name="birthday" value="${param.birthday}">
				<input type="hidden" name="degree" value="${param.degree}">
			<td>
				<input type="button" name="action1" value="Confirm"
					onclick="this.form.action='success.jsp';this.form.submit();">
			</td>
			<td>
				<input type="button" name="action1" value="Reregister"
					onclick="this.form.action='re_register.jsp';this.form.submit();">
			</td>
			</form>
		</tr>
		<table>
		
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