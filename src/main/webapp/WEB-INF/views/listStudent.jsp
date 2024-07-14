<%@page import="com.prowings.entity.Student"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>List Students</title>
</head>
<body>
	<h1>List of Students</h1>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>
			</tr>
		</thead>
		<tbody>
			<% 
				List<Student> list = (List) request.getAttribute("students"); 
			%>

			<% 
				for (Student u : list) { 
			%>
			<tr>
				<td><%=u.getId()%></td>
				<td><%=u.getName()%></td>
				<td><%=u.getAddress()%></td>
			</tr>
			<% 
				} 
			%>
		</tbody>
	</table>

</body>
</html>