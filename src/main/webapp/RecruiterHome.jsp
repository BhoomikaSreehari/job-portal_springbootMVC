<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style type="text/css">
body{
    background-image: url('https://thumbs.dreamstime.com/b/human-resources-hr-management-recruitment-employment-headhunting-concept-human-resources-hr-management-recruitment-employment-122402796.jpg');
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
    margin: 15px 550px;
}
button:hover{
    background-color: #9370DB;
}

</style>
</head>
<body>
${pass}
	<h1>Recruiter Home</h1>
	<a href="/recruiter/add-job"><button><b>Add Job</b></button></a>
	<a href="/recruiter/view-jobs"><button>View Jobs</button></a>
<a href="/recruiter/view-applications"><button>See Applications</button></a>
<a href="/logout"><button><b>Logout</b></button></a>
	
</body>
</html>