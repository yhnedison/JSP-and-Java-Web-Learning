<%@ page pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%-- <c:if test="${param.username == \"abcabc\" && param.userpass == \"123123\" }">
	<c:set var="username" value="${param.username }" scope="session"> </c:set>
	<jsp:forward page="login_success.jsp"/>
</c:if>

<c:if test="${param.username != \"abcabc\" || param.userpass != \"123123\" }">
	<jsp:forward page="login_failure.jsp"/>
</c:if>    --%>

<jsp:useBean id="user" class="com.alexyu.UserBean" scope="request"/>

<%-- 
<jsp:setProperty name="user" property="username" value="${param.username}"/>
<jsp:setProperty name="user" property="username" param="username"/>
<jsp:setProperty name="user" property="userpass"/> 
--%>

<jsp:setProperty name="user" property="*"/>

<c:set var="result" scope="page">
	<jsp:getProperty name="user" property="result"/>
</c:set>



<c:if test="${user.result==-1}">
	<jsp:forward page="login_failure.jsp"/>
</c:if>

<c:if test="${result==0}">
	<c:set var="username" value="${param.username}" scope="session"/>
	<c:set var="degree" value="0" scope="session"/>
	<jsp:forward page="login_success.jsp"/>
</c:if>

<c:if test="${result==1}">
	<c:set var="username" value="${param.username}" scope="session"/>
	<c:set var="degree" value="1" scope="session"/>
	<jsp:forward page="login_success.jsp"/>
</c:if>
