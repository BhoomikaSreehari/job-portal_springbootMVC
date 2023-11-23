<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifications</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #007BFF;
        }

        button {
            padding: 5px 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
${pass}${fail}
	<h1>Notifications</h1>
	<table border="1">
		<tr>
			<th>Message</th>
			<th>Time</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="notification" items="${notifications}">
			<tr>
				<th>${notification.message}</th>
				<th>${notification.time}</th>
				<th><a href="/user/delete-notification/${notification.id}"><button>Delete</button></a></th>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/user/back"><button>Back</button></a>
</body>
</html>