<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>home</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #e3f2fd">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="adduser">add
							user</a></li>
				</ul>
			</div>
			<form action="${pageContext.request.contextPath}/searchUser"
				method="get" class="d-flex">
				<input class="form-control me-2" type="search" name="searchTerm"
					placeholder="Search users..." aria-label="Search" id="searchTerm">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<c:choose>
		<c:when test="${not empty userList }">
			<div class="card-body">
				<h2 class="text-center mb-4">List of Users</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">FirstName</th>
							<th scope="col">LastName</th>
							<th scope="col">Email</th>
							<th scope="col">Mob.No.</th>
							<th scope="col">Photo</th>
							<th scope="col">Gender</th>
							<th scope="col">DOB</th>
							<th scope="col">City</th>
							<th scope="col">Professional Skills</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userList }" var="user">
							<tr>
								<th scope="row">${user.id }</th>
								<td>${user.firstName }</td>
								<td>${user.lastName }</td>
								<td>${user.email }</td>
								<td>${user.mobNo }</td>
								<td>${user.photo }</td>
								<td>${user.gender }</td>
								<td>${user.dob }</td>
								<td>${user.city }</td>
								<td>${user.professionalSkills }</td>
								<td><a href="editUser/${user.id }"
									class="btn btn-sm btn-primary">Edit</a> <a
									href="delete/${user.id }" class="btn btn-sm btn-danger">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<div class="alert alert-info mt-3">No users found.</div>
		</c:otherwise>
	</c:choose>
</body>
</html>