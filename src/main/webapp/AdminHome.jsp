<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
    background-image: url('https://image.freepik.com/free-photo/word-approve-business-success-concept_33755-8313.jpg');
     background-size: 1500px 700px;
    background-repeat: no-repeat;
}
h1{
    color: #000080;
    position: relative;
    top: 20px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
    margin: 20px 110px;
}
button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 50px 200px;
}
button:hover{
    background-color: rgb(103, 155, 233);
}
</style>

</head>
<body>
<h1>Admin Home</h1>
<a href="/admin/view-jobs"><button>Approve Job</button></a>
<a href="/logout"><button>Logout</button></a>
</body>
</html>