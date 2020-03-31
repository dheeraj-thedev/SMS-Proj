<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-default">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">NoteArena Property</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="<c:url value="/dashboard.do" />">Dashboard</a></li>
			<li><a href="<c:url value="/addCustomer.do" />">Add Customer</a></li>

		</ul>
	</div>
</nav>