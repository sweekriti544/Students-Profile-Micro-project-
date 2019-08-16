import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadPdf")
@MultipartConfig
public class FileUploadPdf extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,  HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        final Part filePart = request.getPart("file");
        String bookId = request.getParameter("bookId");
        String docname=request.getParameter("docname");
        String status=request.getParameter("status");
String shared=request.getParameter("shared");
        InputStream pdfFileBytes = null;
        final PrintWriter writer = response.getWriter();

        try {

            if (!filePart.getContentType().equals("application/pdf"))
            {
                request.getRequestDispatcher("validfile.jsp").forward(request, response);
            }

            else if (filePart.getSize()>1048576 ) { //2mb
                {
                    writer.println("<br/> File size too big");
                    return;
                }
            }

            pdfFileBytes = filePart.getInputStream();  // to get the body of the request as binary data

            final byte[] bytes = new byte[pdfFileBytes.available()];
            pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.

            Connection  con=null;
            Statement stmt=null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/form","root","");
            } catch (Exception e) {
                System.out.println(e);
                System.exit(0);
            }

            try {
                stmt = con.createStatement();
                //to create table with blob field (One time only)
                stmt.executeUpdate("CREATE TABLE Book (BookId varchar (10) not null ,docname varchar(50), BookContent MEDIUMBLOB, status varchar(50),shared varchar(20),regon DATE,Primary key (BookId))");

            } catch (Exception e) {
                System.out.println("Tables already created, skipping table creation process");
            }


            int success=0;
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO Book VALUES(?,?,?,?,?,?)");
            pstmt.setString(1, bookId);
            pstmt.setString(2,docname);
            pstmt.setBytes(3,bytes);//Storing binary data in blob field.
            pstmt.setString(4,status);
            pstmt.setString(5,shared);
            java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
            pstmt.setDate(6, sqlDate);
            success = pstmt.executeUpdate();
            if(success>=1)  System.out.println("Document Stored");
            con.close();
PrintWriter out=response.getWriter();
            request.getRequestDispatcher("success.jsp").forward(request, response);

        } catch (FileNotFoundException fnf) {
            request.getRequestDispatcher("idsame.jsp").forward(request, response);

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            request.getRequestDispatcher("idsame.jsp").forward(request, response);
        } finally {

            if (pdfFileBytes != null) {
                pdfFileBytes.close();
            }
            if (writer != null) {
                writer.close();
            }
        }

    }
}