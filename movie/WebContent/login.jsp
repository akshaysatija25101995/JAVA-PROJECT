
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="javax.sql.*"%>

<%
   String user=request.getParameter("user");
	String pass=request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection  con= DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","root");
		PreparedStatement ps = con.prepareStatement("select *from user where userid=? and password=?");
		ps.setString(1, user);
		ps.setString(2, pass);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			response.sendRedirect("Booking.html");
		}
		else
		{
			response.sendRedirect("error.html");
		}
%>
    </body>
</html>
