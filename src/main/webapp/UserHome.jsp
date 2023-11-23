<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<style type="text/css">
body{
    background-image: url('https://i.imgur.com/ClpdZEn.jpg');
    background-size: contain;
      background-repeat: no-repeat;
     background-size: 1500px 700px;
}
h1{
    color: #C71585;
    position: relative;
    top: -30px;
    left: 450px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
}
button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 200px;
    cursor: pointer;
    margin: 25px 950px;
}
button:hover{
    background-color: #9370DB;
}
</style>

</head>
<body>
${pass}${fail}
<h1>Job Seeker Home</h1>
<c:if test="${!user.prime }">
<a href="/user/buy-prime"><button>Buy Prime</button></a>
</c:if>
<a href="/user/view-jobs"><button>Jobs</button></a>
<a href="/user/view-application"><button>See My Application</button></a>
<a href="/user/notifications"><button>Notifications</button></a>
<a href="/logout"><button><b>Logout</b></button></a>
</body>
</html>