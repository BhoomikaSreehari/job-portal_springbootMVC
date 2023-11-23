<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
body {
   background-image: url("https://freerangestock.com/sample/116476/job-search-.jpg");
    background-repeat: no-repeat;
     background-size: 1400px 700px;
}
div{
 
    color:#CD5C5C;
    text-align:left;
    margin: 0px auto;
    position: relative;
    top: 30px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 35px;
}
#container{
    height: 200px;
    width: 600px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    margin: 60px auto;
}

button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
}
button:hover{
    background-color:#778899;
}

</style>
</head>
<body>
    <div><b>HOMEPAGE</b></div>
    <div id="container">
         <a href="/admin/login"><button><b>ADMIN</b></button></a>
         <a href="/recruiter/login"><button><b>RECRUITER</b></button></a>
         <a href="/user/login"><button><b>JOB SEEKER</b></button></a>
    </div>    
</body>
</html>