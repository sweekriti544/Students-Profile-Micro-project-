<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
		function valids1(){
			var len=document.userform.users.length;
			if(len>0)
				for(i=0;i<len;i++){
					if(document.userform.users[i].checked)
					  		return true;
				}
			else
				if(document.userform.users.checked)
					return true;
		
			return false;
		}
	</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"form","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where status!='deleted'");
Boolean z=rs.next();
if(z){
%><form action="manageUsers.jsp" method="get" name="userform"  onsubmit="return valids1()">
	<table align="center" border="1">
		<tr>
			<th>User id</th>
			<th>First name</th>
			<th>City</th>
			<th>Phone number</th>
		</tr>
<%
	while(z){
%>
		<tr>
			<td><input type="checkbox" name="users" value="<%=rs.getString("userid")%>">
			<%=rs.getString("userid") %></td>
				<td><%=rs.getString("name")%></td>
			<td><%= rs.getString("city")%></td>
			<td><%=rs.getString("phonenumber")%></td>
		</tr>
<%
	z=rs.next();
	}
%>
	<tr>
		<td colspan="5"><input type="submit" value="delete"></td>
	</tr>
	</table></form>
<% 
}
%>
</body>
</html>