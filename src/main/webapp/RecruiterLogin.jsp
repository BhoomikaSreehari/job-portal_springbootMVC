<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Login Page</title>
<style type="text/css">
body {
  background-image: url("https://www.mediabistro.com/wp-content/uploads/2017/03/iStock-610861498.jpg");
    background-repeat: no-repeat;
     background-size: 1500px 700px;
}
h1{
    color: #8FBC8F;
    margin: 20px 200px;
    position: relative;
    top: -5px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 35px;
}
#container{
    border: 2px solid black;
    border-radius: 20px;
    background-color:#F5F5DC;
    height: 200px;
    width: 800px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 10px 160px;
}
#button01{
    border: 2px black;
    background-color: #DEB887; 
    font-size: 10px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 100px;
    cursor: pointer;
    margin: 0 130px;
}
#button01:hover{
    background-color: #FF69B4;
}

#button02{
    border: 2px black;
    background-color: #DEB887; 
    font-size: 10px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 5px;
    height: 40px;
    width: 120px;
    cursor: pointer;
 margin: 0 50px;
}
#button02:hover{
    background-color: #FF69B4;
}
#button03{
    border: 2px black;
    background-color: #DEB887; 
    font-size: 10px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 5px;
    height: 40px;
    width: 120px;
    cursor: pointer;
}
#button03:hover{
    background-color: #FF69B4;
}
</style>
</head>
<body>
${pass}${fail}
     <h1><b>Recruiter Login</b></h1>
     <div id="container">
     <form action="/recruiter/login" method="post">
         <table>
             <tr>
                 <th>EMAIL :</th>
                 <td><input type="email" name="email" class="non"></td>
             </tr>
             <tr>
                 <th>PASSWORD :</th>
                 <td><input type="password" name="password" class="non"></td>
             </tr>
         </table><br><br>
         <div>
             <a href="/recruiter/forgot-password" id="for">Forget Password ?</a>
         </div><br>
         <div>
             <button id="button01"><b>LOGIN</b></button>
         </div><br>
     </form>    
     <a href="/recruiter/signup"><button id="button02"><b>CREATE ACCOUNT</b></button></a>
     <br><br>
     <a href="/"><button id="button03"><b>BACK</b></button></a>
     </div>
</body>
</html>