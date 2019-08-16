<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Help</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%String uid=(String)session.getAttribute("username"); %>
	<table align="center" border="2">
		<tr>
			<th>Functionality</th>
			<th>Usage</th>
		</tr>
		<%if(uid.equals("admin")){ %>
		<tr>
			<td>Manage Documents</td>
			<td>Here you can manage all the documents in the system</td>
		</tr>
		<tr>
			<td>Manage users</td>
			<td>Here you can manage all the users with in the system</td>
		</tr>
		<tr>
			<td>Report generation</td>
			<td>To generate reports of either students or documents</td>
		</tr>

		<tr>
			<td>Create document</td>
			<td>Here you can create documents to have online storage</td>
		</tr>
		<%}else{ %>
		<tr>
			<td>View document</td>
			<td>
				Here you can view all your documents and documents shared documents.<br>
				from here you can share documents to any one in the system or send for approval.
			</td>
		</tr>
		<tr>
			<td>Approve documents</td>
			<td>Here you can approve documents came for approval by you</td>
		</tr>
		<%} %>
		<tr>
			<td>Settings</td>
			<td>Here you can change your current password</td>
		</tr>

		
	</table>
</body>
</html>