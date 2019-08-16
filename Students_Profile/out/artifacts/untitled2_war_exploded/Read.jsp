<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>eBook Read</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form  method="get" action="/FileRead">
    <table>
        <tr>
            <td>Enter Document Id</td>
            <td>
                <input type="text" name="bookId" />
            </td>
        </tr>
        <tr>
            <td colspan="2">  <input  type="submit"  value="Get Book" /></td></tr>
    </table>
</form>
</body>
</html>