<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.Statement"%>
<%@page import = "java.sql.Connection"%>
<%@page contentType = "text / html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv = "Content-Type" content = "text / html; charset = UTF-8"/>
    <title>Download and view your documents </title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
<div id = "con" >
    <h3 align = "center"> Download and view your documents </h3>
    <p> </p>

    <%
        try {

            String uid=(String)session.getAttribute("username");
            out.println(uid);
        String Host = "jdbc:mysql://localhost:3306/form" ;
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        Class. forName ("com.mysql.jdbc.Driver") ;
        connection = DriverManager. getConnection (Host,"root","") ;
        statement = connection. createStatement () ;
        String Data = "select * from book WHERE shared='"+uid+"'and status!='deleted'" ;
        rs =statement.executeQuery(Data) ;
    %>
    <table border = "1" cellspacing = "0" cellpadding = "0" width = "100%" >
        <tr>
            <th> Document id </th>
            <th> Document name </th>
            <th> Action </th>
        </tr>
        <%
            while(rs.next()) {
        %>
        <tr>
            <td> <%=rs.getString("BookId") %> </ td>
            <td> <%=rs.getString("docname") %> </ td>
            <td> <a href="/FileRead?bookId=<%=rs.getString("BookId")%> " > View </a>   </td>
        </tr>
        <%    }     %>
    </table>
    <%
        rs.close() ;
        statement.close() ;
        connection.close() ;
        } catch (Exception ex) {
        out.println ("Can not connect to database." ) ;
        }
    %>
</div>
</body>
</html>