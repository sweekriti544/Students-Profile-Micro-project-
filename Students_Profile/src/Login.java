import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


public class Login extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un=request.getParameter("uname");
        String pw=request.getParameter("pass");

        // Connect to mysql and verify username password

        try {
            Class.forName("com.mysql.jdbc.Driver");
            // loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", ""); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select name,password from login where name=? and password=?");
            ps.setString(1, un);
            ps.setString(2, pw);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                response.sendRedirect("login.jsp");
                return;
            }
            PrintWriter out=response.getWriter();
            out.print("<p style=\"color:red\">Sorry username or password error</p>");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.include(request,response);

        } catch (ClassNotFoundException | SQLException e) {
            PrintWriter out=response.getWriter();
            out.println("Error in connection!!");
            e.printStackTrace();
        }
    }


}