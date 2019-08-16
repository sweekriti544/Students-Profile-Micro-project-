<%--
  Created by IntelliJ IDEA.
  User: hp dv4
  Date: 3/21/2018
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome <%= (String)request.getSession().getAttribute("uname")%></title>
</head>
<body>
<h4>
    <%@ include file = "header.jsp" %>
    Hello,
    <%=(String)request.getSession().getAttribute("uname")%></h4>
</body>
</html>
