<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Jobs Available</h3>

<table>
<tr>
<td>Job Title</td>
<td>Job Description</td>

<td>Location</td>
<td>Zip Code</td>
<td>Phone</td>
<td>email</td>
</tr>
		<c:forEach var="ad" items="${jobAds}">
			<tr>
				<td>${ad.title}</td>
				<td>${ad.desc}</td>
				
				<td>${ad.city}</td>
				<td>${ad.code}</td>
				<td>${ad.no}</td>
				<td>${ad.email}</td>
				
			</tr>
			
		</c:forEach>
	
</table>

</body>
</html>