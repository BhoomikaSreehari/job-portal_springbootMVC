<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Jobs</title>
<style>
body {
    background-image: url('background.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    font-family: 'Arial', sans-serif;
    color: #ffffff; /* Text color on top of the background image */
}

h1 {
    color: #ffcc00; /* Header text color */
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 2px solid #ffffff; /* Table border color */
    padding: 15px;
    text-align: center;
    background-color: rgba(0, 0, 0, 0.5); /* Table cell background color with transparency */
}

button {
    background-color: #007bff; /* Button background color */
    color: #ffffff; /* Button text color */
    padding: 10px 20px;
    font-size: 18px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #0056b3; /* Button background color on hover */
}

a {
    text-decoration: none;
    color: #ffcc00; /* Link text color */
}

a:hover {
    text-decoration: underline;
}

</style>
</head>
<body>
    ${pass}${fail}
	<h1>All Job Details</h1>
	<table border="2">
		<tr>
			<th>Job Role</th>
			<th>Job Description</th>
			<th>Salary Package</th>
			<th>Experience</th>
			<th>Location</th>
			<th>Apply</th>
		</tr>
		<c:forEach var="job" items="${jobs}">
			<tr>
				<td>${job.title }</td>
				<td>${job.description}</td>
				<td>${job.ctc}</td>
				<td>${job.experience}</td>
				<td>${job.location}</td>				
				<td><a href="/user/apply-job/${job.id}"><button>
							Apply</button></a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/user/back"><button>BACK</button></a>
</body>
</html>