
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
	Welcome ${msg}.
	<br>
	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>

	<a href="/list-todos">Click here</a> to start maintaining your todo's.


</body>
</html>