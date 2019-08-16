<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hp dv4
  Date: 4/29/2018
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Students</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<table width="60%" border="0" cellspacing="1" cellpadding="1" align="center" >
<form action=""method="post">
<tr>
    <td>Name</td>
    <td><input type="text" name="nm" class="form-control" placeholder="Enter student name"/></td>
</tr>
   <tr>
    <td>Email id</td>
       <td><input type="text" name="em" class="form-control" placeholder="Enter student email id"/></td>
   </tr>
            <tr>
    <td>Phone number</td>
                <td>  <input type="text" name="pn"class="form-control" placeholder="Enter student phone number"/></td>
            </tr>
   <tr>
       <td>City</td>
       <td> <input type="text" name="ad"  class="form-control" placeholder="Enter student address"/></td>
   </tr>
    <tr>
        <td>Status</td>
       <td> <select name="status">
            <option value="none">None</option>
            <option value="deleted">Deleted</option>
        </select>
    </td>
    </tr>
    <tr>
        <td>Role</td>
        <td> <select name="role">
            <option value="User">User</option>
        </select>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input type="password" name="pw" placeholder="Enter student password"> </td>
    </tr>
    <%Date s1=new Date();
        SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
    %>
    <tr>
        <td>Date:</td>
        <td><input type="text" name="regon" value="<%=f.format(s1) %>"disabled="disabled" ></td>
    </tr>

    <table>
        <tr>
                <input type="submit" name="Submit" value="Add">
            </td>
        </tr>
    </table>
</form>
</table>
</body>
</html>
<%
String name=request.getParameter("nm");
String email_id=request.getParameter("em");
String phone_number=request.getParameter("pn");
String city=request.getParameter("ad");
String status=request.getParameter("status");
String role=request.getParameter("role");
String password=request.getParameter("pw");
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", "");
    Statement st = conn.createStatement();
    String strQuery = "SELECT COUNT(*) FROM login where name='" + name + "'";
    ResultSet rs = st.executeQuery(strQuery);
    rs.next();
    String Countrow = rs.getString(1);
    if (Countrow.equals("0")) {
        if (name != null && email_id != null && phone_number != null && city != null && status != null && role != null && password != null) {
            if (name != "" && email_id != "" && phone_number != "" && city != "" && status != "" && role != "" && password != "") {

                int i = st.executeUpdate("insert into login(name,emailid,city,phonenumber,status,role,password,regon)values('" + name + "','" + email_id + "','" + city + "','" + phone_number + "','" + status + "','" + role + "','" + password + "','" + f.format(s1) + "')");
                out.println("Data is successfully inserted!");
            }
        }
    } else {
        out.println("User name already exists !");
    }
}
catch (Exception e) {
    System.out.print(e);
    e.printStackTrace();
}
%>