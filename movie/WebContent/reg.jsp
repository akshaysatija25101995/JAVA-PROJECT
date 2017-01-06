
    <body>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="javax.sql.*"%>


<%
    String userid=request.getParameter("userid");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String Mobile=request.getParameter("Mobile");
String Age=request.getParameter("Age");
String pincode=request.getParameter("pincode");
   try {
        Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con =DriverManager.getConnection ("jdbc:mysql://localhost:3306/movie","root","root");
         PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
        ps.setString(1, userid);
        ps.setString(2, firstname);
        ps.setString(3, lastname);
        ps.setString(4, email);
        ps.setString(5, password);
        ps.setString(6, Mobile);
        ps.setString(7, Age);
        ps.setString(8, pincode);
        ps.executeUpdate();
        ps.clearParameters();
        out.println("Data saved successfully");
    } catch (Exception e) {
        out.println(e);
        }
%>
  </body>
</html>
