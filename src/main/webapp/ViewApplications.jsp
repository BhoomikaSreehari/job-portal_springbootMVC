<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Applications</title>
<style>
 body {
        font-family: 'Arial', sans-serif;
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        text-align: center;
        color: #ffffff; 
    }

    h1 {
        color: #ffcc00; 
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); 
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: rgba(255, 255, 255, 0.8); 
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 15px;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #DDA0DD;
        color: #fff;
    }

    tr:hover {
        background-color: rgba(255, 255, 255, 0.5); /* Row background color with transparency on hover */
    }

    button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #0056b3;
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
	<h1>Applied Job Details</h1>
	<table border="1">

		<tr>
			<th>Company Name</th>
			<th>Role</th>
			<th>Package</th>
			<th>Location</th>
			<th>Applied Date</th>
			<th>Interview Date</th>
			<th>Current Status</th>
		</tr>

		<c:forEach var="application" items="${applications}">
			<tr>
				<th>${application.job.recruiter.companyname}</th>
				<th>${application.job.title }</th>
				<th>${application.job.ctc}</th>
				<th>${application.job.location}</th>
				<th><c:set var="format"
						value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
					<c:out value="${application.appliedDate.format(format)}"></c:out></th>
				<th><c:if test="${application.interviewDate==null}">
				Not Scheduled Yet
				</c:if> <c:if test="${application.interviewDate!=null}">
						<c:set var="format"
							value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
						<c:out value="${application.interviewDate.format(format)}"></c:out>
					</c:if></th>
				<th>${application.jobStatus}</th>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/user/back"><button>Back</button></a>
</body>
</html>