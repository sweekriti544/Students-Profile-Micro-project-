<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Report</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<form action="generate.jsp">
		<table align="center">
			<tr>
				<td>Reports of</td>
				<td><input type="radio" name="report" value="user">Users</td>
				<td><input type="radio" name="report" value="document">Documents</td>
			</tr>
			<tr>
				<td>From<input type="text" name="start"/>(2018-03-15)</td>
				<td>To<input type="text" name="end">(2018-04-20)</td>
				<td><input type="submit" name="generate" value="generate"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>