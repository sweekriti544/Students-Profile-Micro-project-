<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Generate Report</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	String str=request.getParameter("start");
	String end=request.getParameter("end");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"form","root","");
	Statement st2=con.createStatement();
	String type=request.getParameter("report");
	if(type.equals("user")){
		ResultSet rs=st2.executeQuery("select * from login where regon between '"+str+"' and '"+end+"' and status!='deleted'");
%>
<table align="center" border="2">
	<tr>
		<th>First name</th>
		<th>City</th>
		<th>Phonenumber</th>
		<th>Email id</th>
		<th>Role</th>
		<th>View Profile</th>
	</tr>
	<%
		while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("city") %></td>
		<td><%=rs.getString("phonenumber") %></td>
		<td><%=rs.getString("emailid")%></td>
		<td><%=rs.getString("role")%></td>
		<td> <a href="admin.jsp?name=<%=rs.getString("name")%> " > View </a>   </td>
		<%--<td><%=rs.getDate("regon")%></td>--%>
	</tr>
	<%
		}
	%>
</table>
<%

}

else{
	ResultSet rs=st2.executeQuery("select * from book where regon between '"+str+"' and '"+end+"' and status!='deleted'");
%>
<table align="center" border="2">
	<tr>
		<th>Documentid</th>
		<th>Document name</th>
		<th>Shared</th>
	</tr>
	<%
		while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("BookId") %></td>
		<td><%=rs.getString("docname") %></td>
		<td><%=rs.getString("shared") %></td>
	</tr>

	<%} %>
</table>
<%} %>
</body>
</html>