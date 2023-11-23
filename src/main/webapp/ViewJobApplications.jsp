<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f6f6f6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #applications {
            width: 90%;
            background-color: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            overflow: hidden;
        }

        th, td {
            padding: 20px;
            text-align: left;
            border-bottom: 2px solid #ddd;
        }

        th {
            background-color:#DB7093;
            color: #fff;
            font-weight: normal;
        }

        tr:hover {
            background-color: rgba(0, 123, 255, 0.1);
        }

        a {
            text-decoration: none;
            color: #007BFF;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3;
        }

        button {
            padding: 12px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-button {
            margin-top: 20px;
            text-align: center;
        }

        .back-button button {
           
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-button button:hover {
            background-color: #555;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        </style>
</head>
<body>
	<div id="applications">
		<table border="1px solid black">
			<tr>
				<th>Applicant Name</th>
				<th>Mobile</th>
				<th>Role Applied</th>
				<th>Download Resume</th>
				<th>Applied Date</th>
				<th>Interview Date</th>
				<th>Current Status</th>
				<th>Change Status</th>
			</tr>

			<c:forEach var="application" items="${applications}">
				<tr>
					<th>${application.user.fullname }</th>
					<th>${application.user.mobile }</th>
					<th>${application.job.title }</th>
					<th><a href="/recruiter/resume/${application.user.id}"><button>Download Resume</button></a></th>
					<th>${application.appliedDate }</th>
					<th><c:if test="${application.interviewDate==null}">
						NA
						</c:if> <c:if test="${application.interviewDate!=null}">
						${application.interviewDate}
						</c:if></th>
					<th>${application.jobStatus}</th>
					<th><c:if
							test="${application.jobStatus.name().equals('APPLIED')}">
							<a href="/recruiter/schedule/${application.id}"><button>Schedule Interview</button></a>
						</c:if> <c:if test="${application.jobStatus.name().equals('SCHEDULED')}">
							<a href="/recruiter/accept/${application.id}"><button>ACCEPT</button></a>
							<a href="/recruiter/reject/${application.id}"><button>REJECT</button></a>
						</c:if> <c:if
							test="${application.jobStatus.name().equals('SELECTED')||application.jobStatus.name().equals('REJECTED')}">
						NA
						</c:if></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<a href="/recruiter/back"><button>Back</button></a>

</body>
</html>