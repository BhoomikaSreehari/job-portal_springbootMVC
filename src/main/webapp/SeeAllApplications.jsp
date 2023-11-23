<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applications</title>
<style type="text/css">
body{
    background-color: azure;
}
form{
    border: 2px solid black;
    height: 150px;
    width: 400px;
    margin: 100px auto;
    border-radius: 10px;
    background-color: white;
}
#select{
	text-align: center;
	font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
#box{
    border: 2px solid black;
    border-radius: 10px;
    height: 30px;
    width: 180px;
}
#button01{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 30px;
    width: 92px;
    cursor: pointer;
    margin: 0 150px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: grey; 
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: -20px 620px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<form action="/recruiter/view-application" method="post">
    <br>
		<div id="select">
			Select A Job :
			<select name="id" required="required" id="box">
				<c:forEach var="job" items="${jobs}">
					<option value="${job.id}">${job.title}</option>
				</c:forEach>
			</select>
		</div>
	<br><br><br>
	<button id="button01"><b>SUBMIT</b></button>
 	</form>
	<a href="/recruiter/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>