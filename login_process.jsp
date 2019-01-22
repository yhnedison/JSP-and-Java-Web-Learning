<%@ page pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<c:if test="${param.username == 'abcabc' && param.userpass == '123123' }">
	<c:set var="username" value="${param.username }" scope="session"> </c:set>

	Something before success login jsp include
	<jsp:include page="login_success.jsp"/>
	Something after success login jsp include
</c:if>

<c:if test="${param.username != 'abcabc' || param.userpass != '123123' }">
		<jsp:forward page="login_failure.jsp"/>
</c:if>