<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Todos for ${name}</title>
</head>
<body>

	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<H1>Your Todos</H1>
	${todos}

	<table>
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Description</td>
			<td>Target Date</td>
			<td>Is Done</td>
		</tr>
		<c:forEach items="${todos}" var="item">
			<tr>
				<td><c:out value="${item.getId()}"></c:out></td>
				<td><c:out value="${item.getUser()}"></c:out></td>
				<td><c:out value="${item.getDesc()}"></c:out></td>
				<td><c:out value="${item.getTargetDate()}"></c:out></td>
				<td><c:out value="${item.getIsDone()}"></c:out></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>