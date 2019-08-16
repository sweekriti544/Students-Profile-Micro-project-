<%@ page language="java"  import="java.sql.*" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Business Website Template - Free CSS Templates</title>
<meta name="keywords" content="free css templates, business template, HTML CSS" />
<meta name="description" content="Business Template - Free CSS Templates by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"form","root","");
	Statement st=con.createStatement();
	String uid=(String)session.getAttribute("username");
	String fn=request.getParameter("fn");
	String city=request.getParameter("city");
	String phone=request.getParameter("phone");
	String eid=request.getParameter("eid");
	
	st.executeUpdate("update login set name='"+fn+"',emailid='"+eid+"',city='"+city+"',phonenumber='"+phone+"'"' where userid='"+uid+"'");
%><jsp:forward page="profile.jsp"></jsp:forward>	
<%}
catch(Exception e){
 %>
 	<p style="color:red;">your profile is not changed</p> 
 <% 	
}
%>	
	
       

</body>

</html>