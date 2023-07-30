<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		<div class="row justify-content-center align-items-center min-vh-100">
			<div class="col-sm-8 col-md-6 ">
				<h2 class="text-center mb-4">Edit User</h2>
				<c:if test="${not empty user }">

					<form action="${pageContext.request.contextPath}/updateUser"
						method="post">

						<input type="hidden" name="id" value="${user.id }">
						<div class="form-group">
							<label for="firstName">First Name:</label> <input type="text"
								class="form-control" id="firstName" name="firstName"
								value="${user.firstName }" required>
						</div>
						<div class="form-group">
							<label for="lastName">Last Name:</label> <input type="text"
								class="form-control" id="lastName" name="lastName"
								value="${user.lastName }" required>
						</div>
						<div class="form-group">
							<label for="photo">Photo Upload:</label> <input type="file"
								class="form-control-file" id="photo" name="photo"
								value="${user.getPhoto()}" accept="image/*">
						</div>
						<div class="form-group">
							<label>Gender:</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="male" value="male"required
                                ${user.getGender().equals('male') ? 'checked' : ''}>
								<label class="form-check-label" for="male">Male</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="female" value="female"
									${user.getGender().equals('female') ? 'checked' : ''}>
								<label class="form-check-label" for="female">Female</label>
							</div>
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" name="email"
								value="${user.email }" required>
						</div>
						<div class="form-group">
							<label for="mobile">Mobile No.:</label> <input type="number"
								class="form-control" id="mobile" name="mobNo"
								value="${user.mobNo }" required>
						</div>
						<div class="form-group">
							<label for="dob">Date of Birth:</label> <input type="date"
								class="form-control" id="dob" name="dob" value="${user.dob }"
								required>
						</div>
						<div class="form-group">
							<label for="city">City:</label> <select class="form-control"
								id="city" name="city" required>
								<option value="">Select City</option>
								<c:forEach items="${cities}" var="city">
									<option value="${city}"
										${city.equals(user.getCity()) ? 'selected' : ''}>${city}</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group">
							<label>Professional Skills:</label>
							<c:forEach items="${professionalSkills}" var="skill">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										name="professionalSkills" value="${skill}"
										${user.getProfessionalSkills().contains(skill) ? 'checked' : ''}>
									<label class="form-check-label" for="skill">${skill}</label>
								</div>
							</c:forEach>
						</div>

						<div class="form-group text-center">
						<a href="${pageContext.request.contextPath}/home"><button  class="btn btn-warning">Back</button></a>
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>

				</c:if>
			</div>
		</div>
	</div>
</body>
</html>