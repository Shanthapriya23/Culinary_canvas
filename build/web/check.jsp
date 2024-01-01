<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.db.utils.DbConnection" %>

<%
    String user = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");

    try {
        Connection con = DbConnection.init();

        String query = "INSERT IGNORE INTO members(first_name, last_name, email, uname, password) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setString(1, fname);
        preparedStatement.setString(2, lname);
        preparedStatement.setString(3, email);
        preparedStatement.setString(4, user);
        preparedStatement.setString(5, pwd);

        int i = preparedStatement.executeUpdate();

        if (i > 0) {
            // Assuming session is initialized properly
            session.setAttribute("userid", user);
            response.sendRedirect("success.jsp");
        } else {
            // Redirect to an error page with a message
            response.sendRedirect("error.jsp?message=Registration failed");
        }

    } catch (SQLException se) {
        // Handle errors for JDBC
        se.printStackTrace();
        // Redirect to an error page with a message
        response.sendRedirect("error.jsp?message=Database error");
    } catch (Exception e) {
        // Handle other errors
        e.printStackTrace();
        // Redirect to an error page with a message
        response.sendRedirect("error.jsp?message=Unexpected error");
    }
%>
