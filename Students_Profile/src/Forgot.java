import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Forgot")
public class Forgot extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String pass=request.getParameter("pass");


        // Connect to mysql and verify username password

        try {
            Class.forName("com.mysql.jdbc.Driver");
            // loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", ""); // gets a new connection

            PreparedStatement ps = c.prepareStatement("UPDATE login SET password=? where name=?");
            ps.setString(2, name);
            ps.setString(1, pass);

            int i = ps.executeUpdate();
            if (i > 0) {

                response.sendRedirect("update.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        }
        catch (ClassNotFoundException | SQLException e) {
            PrintWriter out=response.getWriter();
            out.println("Error in connection!!");
            e.printStackTrace();
        }
    }
}
