<%--
  Created by IntelliJ IDEA.
  User: hp dv4
  Date: 4/1/2018
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
    session.invalidate();
%>
<jsp:forward page="index.jsp"></jsp:forward>

</body>
</html>
