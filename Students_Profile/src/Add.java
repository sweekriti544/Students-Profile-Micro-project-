import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "Add")
public class Add extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database
        //Connection connection;
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="form";
        String driver="com.mysql.jdbc.Driver";
        //String dbUserName="root";
        //String dbPassword="root";

        try{
            String userid=request.getParameter("userid");
            String name = request.getParameter("name");
            String emailid = request.getParameter("emailid");
            String city = request.getParameter("city");
            String status=request.getParameter("status");
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url+dbName,"root", "");
            PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into login(userid,name,emailid,city,status) values(?,?,?,?,?)");//try2 is the name of the table
pst.setString(1,userid);
            pst.setString(2,name);
            pst.setString(3,emailid);
            pst.setString(4,city);
            pst.setString(5,status);

            int i = pst.executeUpdate();
            String msg=" ";
            if(i!=0){
                msg="Record has been inserted";
                pw.println("<font size='6' color=blue>" + msg + "</font>");
                RequestDispatcher rd=request.getRequestDispatcher("addform.jsp");
                rd.include(request,response);

            }
            else{
                msg="failed to insert the data";
                pw.println("<font size='6' color=red>" + msg + "</font>");
                RequestDispatcher rd=request.getRequestDispatcher("addform.jsp");
                rd.include(request,response);
            }
            pst.close();
        }
        catch (Exception e){
            pw.println(e);
        }

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
