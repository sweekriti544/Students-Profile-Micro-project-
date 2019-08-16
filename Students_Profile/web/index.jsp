<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Student Profile</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&subset=latin,latin-ext'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="materialContainer">

    <h1 class="heading"></h1>

    <div class="box">
        <div class="title">LOGIN</div>

        <form action="checklogin.jsp" method="post">
            <div class="input">
                <%--<h3></h3>Username</h3>--%>
                <input type="text" name="uname" id="uname" placeholder="Username" required>
                <span class="spin"></span>
                <%--%><input type="text" pattern="[a-z]{1,15}"  placeholder="Enter Username" name="uname" required>
                  <span class="spin"></span>--%>
            </div>
            <div class="input">
                <%--<label for="pass">Password</label>--%>
                <input type="password" name="pass" id="pass" placeholder="Password" required>
                <span class="spin"></span>
                <%-- <div class="input">
                 Password:
                 <input type="password" placeholder="Enter Password" name="pass" required>
                   <span class="spin"></span>--%>
            </div>
            <div class="button login">
                <button><span>GO</span> <i class="fa fa-check"></i></button>
            </div>

    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="/js/index.js"></script>

</body>
</html>

