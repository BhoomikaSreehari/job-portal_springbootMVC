<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
    background-image:url("https://wallpapers.com/images/hd/recruitment-icons-bu8cdfj8r43equjp.jpg");
     background-repeat: no-repeat;
     background-size: 1500px 700px;
}
h2{
    text-align: center;
    margin: 20px;
    color: darkred;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 30px;
}
#tab{
    background-color: white;
    text-align: center;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border: 2px solid black;
    height: 350px;
    width: 500px;
    margin: -20px auto;
}
input{
	border: 2px solid black;
    margin: 10px 0px;
    height: 25px;
    width: 350px;
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
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 30px;
    width: 80px;
    cursor: pointer;
    margin: 10px 560px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
${fail }${pass }
  <h1><b>Recruiter Job Posting Page</b></h1>
    <div id="container">
    <form action="/recruiter/add-job" method="post">
        <fieldset>
         <legend>
                <b><i>Enter Job Details Here</i></b>
            </legend>
              <tr>
                        <th>Enter Job Title </th><br>
                        <td><input type="text" class="non" name="title"></td><br>
                    </tr>
               <tr>
                        <th>Enter Skills Required</th><br>
                        <td><input type="text" class="non" name="skills"></td><br>
                    </tr>
                        <tr>
                        <th>Enter Job Description</th><br>
                        <td><input type="text" class="non" name="description"></td><br>
                    </tr>
                        <tr>
                        <th>Experience Required In Years</th><br>
                        <td><input type="text" class="non" name="experience"></td><br>
                    </tr>
                        <tr>
                        <th>Enter Package Offered</th><br>
                        <td><input type="text" class="non" name="ctc"></td><br>
                    </tr>
                       <tr>
                        <th>Enter Location</th><br>
                        <td><input type="text" class="non" name="location"></td><br>
                    </tr>
                    <br>
                <div>
                    <button>Add</button>
                    <button type="reset" id="cancel-button">Cancel</button>
                </div> 
        </fieldset>   
        </form>
        </div>
        <a href="/recruiter/back"><button>BACK</button></a>
        </body>
</html>