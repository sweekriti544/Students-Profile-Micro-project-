<%--
  Created by IntelliJ IDEA.
  User: hp dv4
  Date: 3/25/2018
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
</body>
</html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%

    String uname=request.getParameter("username");
    String OldPassword = request.getParameter("OldPassword");
    String Newpass = request.getParameter("newpassword");
    String conpass = request.getParameter("conpassword");


    Connection con = null;
    Statement st = null;
    String pass = "";
    int id = 0;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/form";
        con = DriverManager.getConnection(url, "root", "");
        st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from login where password= '"+ OldPassword + "'");
        if (rs.next()) {
            pass = rs.getString("password");
            //id = rs.getString("id");
        }
        if(Newpass.equals(conpass))
        {

            if (pass.equals(OldPassword)) {
                st = con.createStatement();
                int i = st.executeUpdate("update login set password='" + Newpass + "' where name='" + uname + "'");
                out.println("Password changed successfully");
                st.close();
                con.close();
            } else {
                out.println("Error occured while changing password!!");
            }
}
        }
    catch (Exception e) {
        out.println(e);
    }
%>