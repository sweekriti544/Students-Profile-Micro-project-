<!DOCTYPE html>

<html lang="">
<head>
    <title>Students Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
    <%
    String uid=(String)session.getAttribute("username");
%>



<div class="wrapper row0">
    <div id="topbar" class="hoc clear">

        <div class="fl_left">
            <ul class="nospace">
                <%
                    if(uid.equals("admin")){
                %>
                <li><a href="login.jsp">Home</a></li>
                <%}
                else{ %>
                <li><a href="user.jsp">Home</a></li>
                <%}%>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        <div class="fl_right">
            <ul class="nospace">
                <li>students_profile.com</li>
            </ul>
        </div>

    </div>
</div>

<div class="wrapper row1">
    <header id="header" class="hoc clear">
        <!-- ################################################################################################ -->
        <div id="logo" class="fl_left">
            <h1><a href="index.jsp">Students Profile</a></h1>
        </div>
        <nav id="mainav" class="fl_right">
            <ul class="clear">
                <%
                    if(uid.equals("admin")){
                %>
                <li><a href="login.jsp">Home</a></li>
                <%}
                    else{ %>
                <li><a href="user.jsp">Home</a></li>
                <%}%>
                <li><a href="#">settings</a>
                    <ul>
                        <li><a href="ChangePasswordForm.jsp" >change password</a></li>
                    </ul>
                </li>

                <%--  <%
                      String uname=request.getParameter("uname");
                      if(uname.equalsIgnoreCase("admin")){
                  %>
                  <ul>
                      <li><a  href="#" >manage users</a></li>
                      <li><a href="#">manage documents</a></li>
                      <li><a href="#" >generate report</a></li>
                  </ul>
                  <%}
                  else{ %>
                  <ul>
                      <li><a  href="#">create document</a></li>
                      <li><a href="#" >view documents</a></li>
                      <li><a href="#" >Approve documents</a></li>
                  </ul>
                  <%} %>

             </li>--%>
                <%
                    if(uid.equals("admin")){
                %>
                <li><a href="#">My Account</a>

                    <ul>
                        <%-- <li><a  href="users.jsp" >Manage users</a></li>--%>
                        <li><a  href="users.jsp" >Manage users</a></li>
                        <li><a href="documents.jsp">Manage documents</a></li>
                        <li><a href="report.jsp" >Generate report</a></li>
                        <li><a  href="fileUpload.jsp">Create document</a></li>
                        <li><a href="add.jsp">Add Students</a> </li>
                    </ul>
                </li><%}
            else{ %>
                <li><a href="#">User Account</a>
                    <ul>

                        <li><a href="list.jsp" >View documents</a></li>

                    </ul>
                </li>
                <%}%>

                <li><a href="help.jsp" >Help</a></li>
                <li><a href="logout.jsp" >Logout</a></li>
            </ul>

    </header>

