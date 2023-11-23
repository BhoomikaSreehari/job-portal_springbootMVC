<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<style type="text/css">
body {
  background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXXf2P3zH7r3InaE-jrgi84bT9vqZtNIn-LTlY5UXOXD6HzdlMWuCROAR1XPAAPrOtj0Q&usqp=CAU");
    background-repeat: no-repeat;
    background-position: center;
      background-size: cover;
       height: 550px;
     
}
h1{
    color: #DC143C;
    text-align: center;
    margin: 0px auto;
    position: relative;
    top: 30px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 45px;
}
#container{
    border: 2px solid black;
    border-radius: 20px;
    height: 200px;
    width: 600px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 60px auto;
}
.non
{
    border: 2px solid black;
    border-radius: 10px;
    height: 35px;
    width: 250px;
}
#button01{
    border: 2px black;
    background-color: 
#5F9EA0; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 0 100px;
}
#button01:hover{
    background-color: #DEB887;
}

#button02{
    border: 2px black;
    background-color: 
#5F9EA0;
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 0 530px;
}
#button02:hover{
    background-color:#DEB887;
}

</style>
</head>
<body>
     <h1><b>AdminLogin</b></h1>
     <div id="container">
     <form action="" method="post">
         <table>
             <tr>
                 <th>EMAIL :</th>
                 <td><input type="text" name="email" class="non"></td>
             </tr>
             <tr>
                 <th>PASSWORD :</th>
                 <td><input type="password" name="password" class="non"></td>
             </tr>
         </table><br><br>
         <div>
             <button id="button01"><b>LOGIN</b></button>
         </div>
     </form>
     </div>
     <a href="/"><button id="button02"><b>BACK</b></button></a>
</body>
</html>