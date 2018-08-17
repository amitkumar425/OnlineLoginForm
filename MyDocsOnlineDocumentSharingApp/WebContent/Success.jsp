<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jstl:if test='${sessionScope.userName.equals("admin") }'>

	<div align="center">
	
	<jsp:include page="Header.jsp"></jsp:include>
	
</div>


<div align="right">
	<jsp:include page="Logout.jsp"></jsp:include>
</div>

<div align="center">
<h3>Hello ${requestScope.userName }</h3>

</div>
<div align="center">

<jsp:include page="Footer.jsp"></jsp:include>

</div>
</jstl:if>
<jstl:if test='${!sessionScope.userName.equals("admin") }'>

<jstl:redirect url="Login.jsp" ></jstl:redirect>

</jstl:if>
</body>
</html>