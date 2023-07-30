
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
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

	<div class="container">
		<div class="row">
			<h1 class="text-center">Add User</h1>
			<div class="mx-auto col-10 col-md-8 col-lg-6 mt-2">

				<form action="createUser" method="post">

					<div class="form-group">
						<label for="firstName" class="form-label">First Name </label> <input
							type="text" class="form-control" id="firstName" name="firstName"
							required="required">
					</div>

					<div class="form-group">
						<label for="lastName" class="form-label">Last Name </label> <input
							type="text" class="form-control" id="lastName" name="lastName"
							required="required">
					</div>

					<div class="form-group">
						<label for="photo" class="form-label">Photo </label> <input
							type="file" class="form-control" id="photo" name="photo"
							required="required">
					</div>


					<div class="form-group">
						<label for="dob" class="form-label">DOB </label> <input
							type="date" class="form-control" id="dob" name="dob"
							required="required">
					</div>
					<div class="form-group">
						<label for="mob" class="form-label">Mob no. </label> <input
							type="tel" pattern="[0-9]{10}" maxlength="10"
							class="form-control" id="mob" name="mobNo" required="required">
						<div class="invalid-feedback">Please enter a 10-digit mobile
							number.</div>

					</div>
					<div class="form-group">
						<label for="email" class="form-label">Email </label> <input
							type="email" class="form-control" id="email" name="email"
							required="required">
					</div>
					<div class="form-group">
						<label for="cityDropdown">City</label> <select required="required"
							class="form-control" id="cityDropdown" name="city">
							<option value="" disabled selected>select city</option>
							<option value="new_york">New York</option>
							<option value="los_angeles">Los Angeles</option>
							<option value="chicago">Chicago</option>
							<option value="houston">Houston</option>
							<option value="miami">Miami</option>
						</select>
					</div>

					<div class="form-group">
						<label>Gender:</label>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="male" value="male" required="required"> <label
								class="form-check-label" for="male">Male</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="female" value="female" required="required"> <label
								class="form-check-label" for="female">Female</label>
						</div>
					</div>

					<div class="form-group">

						<label >Select Professional Skills</label> <br> <label>
							<input type="checkbox" name="professionalSkills"
							value="programming" > Programming
						</label><br> <label> <input type="checkbox"
							name="professionalSkills" value="design"> Design
						</label><br> <label> <input type="checkbox"
							name="professionalSkills" value="communication">
							Communication
						</label><br> <label> <input type="checkbox"
							name="professionalSkills" value="leadership"> Leadership
						</label>

					</div>
					<div class="form-group">
						<a href="${pageContext.request.contextPath}/home"><button
								type="button" class="btn btn-warning">Back</button></a>
						<button type="reset" class="btn btn-secondary">Reset</button>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>