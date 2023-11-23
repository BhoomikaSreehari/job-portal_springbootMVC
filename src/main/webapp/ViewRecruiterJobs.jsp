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
         background-image: url('path/to/your/image.jpg');
         background-size: cover;
         background-repeat: no-repeat;
         background-position: center center;
         background-attachment: fixed;
         font-family: 'Arial', sans-serif;
         color: #333;
         margin: 0; /* Remove default margin */
         padding: 0; /* Remove default padding */
      }

      header {
         background-color: #0066cc;
         color: #fff;
         padding: 10px;
         text-align: center;
      }

      h1 {
         color: #0066cc;
         text-align: center;
      }

      table {
         border-collapse: collapse;
         width: 80%;
         margin: 20px auto; /* Center the table */
         background-color: #fff;
         box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }

      th, td {
         border: 1px solid #ddd;
         padding: 12px;
         text-align: left;
      }

      th {
         background-color: #0066cc;
         color: #fff;
      }

      tr:nth-child(even) {
         background-color: #f2f2f2;
      }

      a {
         text-decoration: none;
         color: #0066cc;
         transition: color 0.3s;
      }

      a:hover {
         color: #004080;
      }

      button {
         background-color: #0066cc;
         color: #fff;
         padding: 10px 20px;
         border: none;
         cursor: pointer;
         font-size: 16px;
      }

      button:hover {
         background-color: #004080;
      }
   </style>
</head>
<body>
${pass}${fail}
	<h1>All Job Details</h1>
	<table border="1">
		<tr>
			<th>Job Role</th>
			<th>Job Description</th>
			<th>Salary Package</th>
			<th>Experience</th>
			<th>Location</th>
			<th>Status</th>
		</tr>
		<c:forEach var="job" items="${jobs}">
			<tr>
			<td>${job.title }</td>
			<td>${job.description}</td>
			<td>${job.ctc}</td>
			<td>${job.experience}</td>
			<td>${job.location}</td>
			<td>
			<c:if test="${job.approved}">
			Approved
			</c:if>
			<c:if test="${!job.approved}">
			Not Approved
			</c:if>
			</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/recruiter/back"><button>BACK</button></a>
</body>
</html>