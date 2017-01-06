<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="javax.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String seatno=request.getParameter("seatno");
session.setAttribute("seatno",seatno);
/*String statuss=session.getAttribute("statuss").toString();*/
try {
    Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con =DriverManager.getConnection ("jdbc:mysql://localhost:3306/movie","root","root");
if((user.equals("akshay") && pass.equals("aks")));
{
	session.setAttribute("user",user);
	PreparedStatement ps2 = con.prepareStatement("select * from seats");
  	/*ps2.setString(1,seatno);
  	ps2.setString(2,statuss);*/
		ResultSet rs=ps2.executeQuery();
	String i=null;
		while(rs.next())
		{
		
			i=rs.getString(2);
		}
		out.print(i);
		/*String j="book";*/
 PreparedStatement ps4=con.prepareStatement("update seats set statuss='Free'");
int f= ps4.executeUpdate();
String j="book";
out.print(f);
}	
}
catch (Exception e) {
    out.println(e);
    } 


/*try {
    Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con =DriverManager.getConnection ("jdbc:mysql://localhost:3306/movie","root","root");
if(user.equals("akshay")&& pass.equals("ak21"));
{
	PreparedStatement ps2 = con.prepareStatement("select * from seats");
  	ps2.setString(1,seatno);
  	ps2.setString(2,statuss);
		ResultSet rs=ps2.executeQuery();
	String i=null;
		while(rs.next())
		{
		
			i=rs.getString(2);
		}
		out.print(ps2);
		String j="book";
 PreparedStatement ps4=con.prepareStatement("update seats");
 ps4.setString(1,j);
 	ps4.setString(2,seatno);
int f= ps4.executeUpdate();
}
}
catch (Exception e) {
    out.println(e);
    } */
out.print("Data updated");
%>

</body>
</html>