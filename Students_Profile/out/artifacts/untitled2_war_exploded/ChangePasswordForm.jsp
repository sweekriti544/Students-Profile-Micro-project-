<html>
<head>
    <title>Change password</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
<div class="container">
<script language="javascript">
    function fncSubmit()
    {

        if(document.ChangePasswordForm.OldPassword.value == "")
        {
            alert('Please input old password');
            document.ChangePasswordForm.OldPassword.focus();
            return false;
        }

        if(document.ChangePasswordForm.newpassword.value == "")
        {
            alert('Please input Password');
            document.ChangePasswordForm.newpassword.focus();
            return false;
        }

        if(document.ChangePasswordForm.conpassword.value == "")
        {
            alert('Please input Confirm Password');
            document.ChangePasswordForm.conpassword.focus();
            return false;
        }

        if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
        {
            alert('Confirm Password Not Match');
            document.ChangePasswordForm.conpassword.focus();
            return false;
        }

        document.ChangePasswordForm.submit();
    }
</script>
    <table width="60%" border="0" cellspacing="1" cellpadding="1" align="center" >
        <form name="ChangePasswordForm" method="post" action="ProcessChangePWD.jsp" OnSubmit="return fncSubmit();">
        <tr>
            <td>User Name</td>
            <TD><input name="username" type="text" id="username" size="20" required></td>
        </tr>
        <tr>
            <td>OLD PASSWORD</td>
            <TD><input name="OldPassword" type="password" id="OLDpwd" size="20" required></td>
        </tr>
        <tr>
            <td>NewPassword</td>
            <td><input name="newpassword" type="password" id="newpassword" required>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td><input name="conpassword" type="password" id="conpassword" required>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><button type="submit">Submit</button></td>
        </tr>
        </form>
    </table>
</div>
</body>
</html>