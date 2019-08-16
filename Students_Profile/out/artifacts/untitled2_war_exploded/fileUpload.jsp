<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>File Upload</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form method="POST" action="/FileUpload" enctype="multipart/form-data" >
    <table>
        <tr><td>Document Id</td>
            <td><input type="text" name="bookId" /></td>
        </tr>
            <tr><td>Document Name</td>
            <td><input type="text" name="docname" /></td>
        <tr>
            <td>Status</td>
            <td> <select name="status">
                <option value="none">None</option>
                <option value="deleted">Deleted</option>
            </select>
            </td>
        </tr>
        <tr><td>Document Pdf</td>
            <td><input type="file" name="file" id="file" /> </td>
        </tr>
        <tr><td>Share to</td>
        <td><input type="text" name="shared" id="shared"/></td>
        </tr>
        <%Date s1=new Date();
            SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
        %>
        <tr>
            <td>date:</td>
            <td><input type="text" name="regon" value="<%=f.format(s1) %>"disabled="disabled" ></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Upload" name="upload" id="upload" /> </td>
        </tr>
    </table>
</form>
</body>
</html>