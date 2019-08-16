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
    String uname=(String)session.getAttribute("uname");

%>

<div class="wrapper row0">
    <div id="topbar" class="hoc clear">

        <div class="fl_left">
            <ul class="nospace">
                <li><a href="index.jsp">
                <li><a href="login.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <%---
                <li><a class="MenuBarItemSubmenu" href="#">Messages</a>
                    <ul>
                        <li><a href="SendMessage.jsp" >compose</a></li>
                        <li><a href="inbox.jsp" >Inbox</a></li>
                        <li><a href="outbox.jsp" >outbox</a></li>
                    </ul>
                </li>--%>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="wrapper row1">
    <header id="header" class="hoc clear">
        <!-- ################################################################################################ -->
        <div id="logo" class="fl_left">
            <h1><a href="index.html"></a></h1>
        </div>
        <nav id="mainav" class="fl_right">
            <ul class="clear">
                <li class="active"><a href="login.jsp">Home</a></li>
                <li><a href="#">Settings</a>
                <ul>
                    <li><a href="ChangePasswordForm.jsp" >Change password</a></li>
                </ul>
            </li>
<%--
                <li><a href="#">My Account</a>

                    <ul>
                        <li><a  href="users.jsp" >manage users</a></li>
                        <li><a href="documents.jsp">manage documents</a></li>
                        <li><a href="report.jsp" >generate report</a></li>
                    </ul>


                    <ul>
                        <li><a  href="upload.jsp">create document</a></li>
                        <li><a href="DownloadView.jsp" >view documents</a></li>
                        <li><a href="Approve.jsp" >Approve documents</a></li>
                    </ul>

                </li>
--%>
                <li><a href="#">My Account</a>

                    <ul>
                        <%-- <li><a  href="users.jsp" >Manage users</a></li>--%>
                        <li><a  href="users.jsp" >Manage users</a></li>
                        <li><a href="documents.jsp">Manage documents</a></li>
                        <li><a href="report.jsp" >Generate report</a></li>
                        <li><a  href="fileUpload.jsp">Create document</a></li>
                       <li><a  href="add.jsp">Add Students</a></li>
                    </ul>
                </li>



                <li><a href="help.jsp" >Help</a></li>
                <li><a href="logout.jsp" >Logout</a></li>
            </ul></nav>
    </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay">
    <div id="pageintro" class="hoc clear">
        <!-- ################################################################################################ -->
        <article>

            <h3 class="heading">Students Profile</h3>

        </article>
        <!-- ################################################################################################ -->
    </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
    <main class="hoc container clear">
        <!-- main body -->
        <!-- ################################################################################################ -->
        <section id="introblocks">
            <div class="sectiontitle">
                <h6 class="heading">Students Profile</h6>
                <p>A certificate will encourage the students to achieve more in their curriculum or co- curriculum.
                    It will be a recognition given to the student for his or her excellence in some or the other field. The database must be strong enough to hold the certificates of all the students of the institution. The user need to login to the application using the username and password. The data that is stored will be safe through this application. It will not be misused.
                    Only the authorized users will be having access to this application. </p>
            </div>

        </section>
        <!-- ################################################################################################ -->

    </main>
</div>

<div class="bgded overlay" style="background-image:url('image/footer.jpg');">
    <!-- ################################################################################################ -->

            <!-- ################################################################################################ -->
        </footer>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->

        </div>
    </div>
    <!-- ################################################################################################ -->
</div>
<!-- End Footer Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>