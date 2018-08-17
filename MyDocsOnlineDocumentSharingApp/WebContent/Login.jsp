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

<form action="login.controller" method="GET">

<div align="center">
	
	<jsp:include page="Header.jsp"></jsp:include>
	
</div>

<div align="center">
	<table>
		<tr>
			<td><input type="text" name="userName" placeholder="Username"> </td>
		</tr>
		<tr>
			<td><input type="password" name="password" placeholder="Password"> </td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="Login"> </td>
		</tr>
	</table>
</div>

<div align="center">

<jsp:include page="Footer.jsp"></jsp:include>

</div>


</form>
</body>
</html>