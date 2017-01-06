<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*"%>
<%@ page import="java.sql.DriverManager" %>
<% 
String seatno =request.getParameter("seatno");
String driverName="com.mysql.jdbc.Driver";
String connectionUrl="jdbc:mysql://localhost:3306/";
String dbname="movie";
String userid="root";
String password="root";
try
{
	Class.forName(driverName);
}
catch(ClassNotFoundException e)
{
	e.printStackTrace();
}
Connection connection =null;
Statement statement =null;
ResultSet resultSet =null;
%>
<table align="center" border="1" height=100%>;
<tr>

</tr>
<tr>
<td> <b> seatno</b> </td>
<td> <b> statuss</b> </td>
</tr>
<% 
try
{
	connection = DriverManager.getConnection(connectionUrl+dbname,userid,password);
	statement =connection.createStatement();
	String sql ="SELECT * FROM seats";
	resultSet =statement.executeQuery(sql);
	while(resultSet.next())
	{
		%>
		<tr bgcolor="#DEB887">
		<td><%=resultSet.getString("seatno") %> </td>
		<td><%=resultSet.getString("statuss") %> </td>
</tr>		
<% 
	}
	connection.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>


















































































