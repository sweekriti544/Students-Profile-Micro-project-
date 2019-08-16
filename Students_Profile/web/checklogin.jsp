<%@ page language="java" import="java.sql.*"%><b><center>

        <%

            String name = request.getParameter("uname");

            String pass = request.getParameter("pass");
String email=request.getParameter("email");
            try {

                Class.forName("com.mysql.jdbc.Driver");
            // loads driver
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", ""); // gets a new connection

Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from login ");
                int x = 0;

                while (rs.next()) {

                    if ((rs.getString("name").equals(name)) && rs.getString("password").equals(pass)) {

                        String stp = rs.getString("role");

                        if (stp.equals("Admin")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("user.jsp");

                } else if (x == 1) {

                    response.sendRedirect("login.jsp");

                } else {
                    response.sendRedirect("index.jsp");
                    out.println("Either you enter Invalid UserName or Password! Please Try Again");

        %>

   <%-- <jsp:include page="index.html" />--%>

        <%}

            } catch (Exception e) {

                out.println(e);

            }

            session.setAttribute("username", name);
session.setAttribute("email",email);
        %>