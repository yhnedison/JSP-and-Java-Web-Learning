<%@ page pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script  type="text/javascript" src="js/validate.js"></script>



<html>
<head>
<title>Please Reregister</title>
</head>

<body>
	<h2 align="center">Please Reregister</h2>
	<form name="form1" action="register_confirm.jsp" method="post" onsubmit=" return isValidate(form1)">
		<table align="center">
			<tr>
				<td>ID:</td>
				<td>
					<input type="text" name="userid" value="${param.userid}">
					length should be 6-8
				</td>
			</tr>

			<tr>
				<td>Password:</td>
				<td>
					<input type="password" name="userpass" value="${param.userpass}">
					length 6-8, cannot be same as ID
				</td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td>
					<input type="password" name="userpass2" value="${param.userpass}">
				</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>
					<input type="text" name="email" value="${param.email}">
				</td>
			</tr>

			<tr>
				<td>Education:</td>
				<td>
					<input type="radio" name="degree" value="Highschool" <c:if test="${param.degree eq 'Highschool'}"> checked </c:if>>  Highschool
					<input type="radio" name="degree" value="BS" <c:if test="${param.degree == 'BS'}"> checked </c:if>> BS
					<input type="radio" name="degree" value="MS" <c:if test="${param.degree == 'MS'}"> checked </c:if>> MS
					<input type="radio" name="degree" value="Dr" <c:if test="${param.degree == 'Dr'}"> checked </c:if>> Doctor
					<input type="radio" name="degree" value="Other" <c:if test="${param.degree == 'Other'}"> checked </c:if>> Other
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
				<td><input type="date" name="birthday" value="${param.birthday}"></td> 
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