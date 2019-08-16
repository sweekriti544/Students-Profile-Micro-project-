<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"form","root","");
	Statement st=con.createStatement();
	String uid=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from login where name='"+uid+"'");
	rs.next();
	String fn=rs.getString("name");
	String  eid=rs.getString("emailid");
	String city=rs.getString("city");
	String  phno=rs.getString("phonenumber");
%>
<table width="60%" border="0" cellspacing="1" cellpadding="1" align="center" >

		<tr>
		<td>	Firstname: <%=fn%>
		</td>
		</tr>

		<!-- and role or location -->
			<tr>
		<td>	 Emailid:<%=eid%>
		</td>
			</tr>
	<tr>
		<td>City:<%=city%></td>
	</tr>
						<tr>
					<td>	 Phonenumber:<%=phno%></td>
						</tr>
	<tr><h1>Hello there!</h1></tr>
</table>
</body>
</html>