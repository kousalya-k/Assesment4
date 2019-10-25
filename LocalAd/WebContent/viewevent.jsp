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
<a href="viewad.jsp">Back</a>
<table>
<tr>
<td>Event Title</td>
<td>Event Description</td>

<td>Location</td>
<td>Phone</td>
</tr>
		<c:forEach var="ad" items="${eventAds}">
			<tr>
				<td>${ad.event_name}</td>
				<td>${ad.event_location}</td>
				<td>${ad.event_description}</td>
				<td>${ad.event_contact}</td>
				
			</tr>
			
		</c:forEach>
	
</table>
</body>
</html>