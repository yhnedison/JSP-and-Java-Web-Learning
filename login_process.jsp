<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${param.username==\"abcabc\" && param.userpass==\"123123\"}">
Login Successful!
</c:if>
<c:if test="${param.username!=\"abcabc\" || param.userpass!="\123123\"}">
Login Failed!
</c:if>