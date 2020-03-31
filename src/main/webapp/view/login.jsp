<%@ page language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel='stylesheet' media='screen'
	href='/public/stylesheets/bootstrap.min.css'>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Yahoo!!</title>
</head>
<body>

	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>

	<p class="col col-md8">
		<font color="red"><c:out value="${errMsg}"></c:out> </font>
	</p>

	<p class="col col-md8">
		<font color="red"><c:out value="${time}"></c:out> </font>
	</p>
	<form action="/login" method="POST">
		Name : <input name="name" type="text" /> Password : <input
			name="pass" type="password" /> <input type="submit" />
	</form>
</body>
</html>