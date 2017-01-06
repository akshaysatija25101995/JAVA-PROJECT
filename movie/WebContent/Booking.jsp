
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
String name1=request.getParameter("name1");
String name2=request.getParameter("name2");
String name3=request.getParameter("name3");
String number=request.getParameter("number");
String City=request.getParameter("City");
String District=request.getParameter("District");
String Theater=request.getParameter("Theater");
String Movie=request.getParameter("Movie");
String message=request.getParameter("message");
String seatno=request.getParameter("seatno");
String days=request.getParameter("days");
String Time=request.getParameter("Time");
String statuss=request.getParameter("statuss");
int cnt=0;

if(name1!="" && name1!=null)
{
	cnt++;	
}

if(name2!="" &&name2!=null)
{
	cnt++;	
}


if(name3!="" &&name3!=null)
{
	cnt++;	
}

	session.setAttribute("cnt", cnt);
	session.setAttribute("Theater", Theater);
	session.setAttribute("Movie", Movie);
	session.setAttribute("Time",Time);
	session.setAttribute("days",days);
	session.setAttribute("message",message);
	session.setAttribute("seatno",seatno);
	session.setAttribute("statuss",statuss);
try {
    Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con =DriverManager.getConnection ("jdbc:mysql://localhost:3306/movie","root","root");
if(name1!=""|| name1!=null)
{
	PreparedStatement ps = con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name1);
    ps.setString(2, name2);
    ps.setString(3, name3);
    ps.setString(4, number);
    ps.setString(5, City);
    ps.setString(6, District);
    ps.setString(7, Theater);
    ps.setString(8, Movie);
    ps.setString(9, message);
    ps.setString(10,seatno);
    ps.setString(11,days);
    ps.setString(12,Time);
    ps.setString(13,statuss);
   int val=ps.executeUpdate();
    if(val>0){
    	if(name1 !=null);
    	{
    		/*response.sendRedirect("pay.html");*/
    		 PreparedStatement ps2 = con.prepareStatement("select * from seats where seatno=? and statuss=?");
    		  	ps2.setString(1,seatno);
    		  	ps2.setString(2,statuss);
    				ResultSet rs=ps2.executeQuery();
    			String i=null;
    				while(rs.next())
    				{
    				
    					i=rs.getString(2);
    				}
    				out.print(ps2);
    				out.print(i);
    				String j="book";
    		 PreparedStatement ps4=con.prepareStatement("update seats set statuss=? where seatno=?");
    		 ps4.setString(1,j);
    		 	ps4.setString(2,seatno);
    		int f= ps4.executeUpdate();
    		if(i=="book")
    		{
    			response.sendRedirect("display.jsp");
    		}
    	/*	if(cnt==2)
			{
    			String k="book";
				 PreparedStatement ps34=con.prepareStatement("update seats set statuss=? where seatno=?");
				 ps34.setString(1,k);
				 ps34.setString(2,seatno);
	    	 ps34.executeUpdate();
	    	 out.print(ps34);
			}*/
    		if(f>0)
    		{
    			response.sendRedirect("pay.html");
    	   }
    	}
    }
}
}
    
   /* int val=ps.executeUpdate();
    
	if(val>0){
  	 PreparedStatement ps2 = con.prepareStatement("select *from details where Theatre=? and Time=?");
   		ps2.setString(1,Theater);
   		ps2.setString(2, Time);
		ResultSet rs=ps2.executeQuery();
		out.print(ps2);
		int i=0;
		while(rs.next())
		{
		
			i=rs.getInt(5);
		
			
		}
	
		
	int AvlSeats=i-cnt;
	
	PreparedStatement ps1=con.prepareStatement("update details set seats=? where Theatre=? and Time=?");
	ps1.setInt(1, AvlSeats);
	ps1.setString(2, Theater);
	ps1.setString(3, Time);

	ps1.executeUpdate();
	out.print(ps1);
	
	}*/

catch (Exception e) {
    out.println(e);
    } 

%>
	
   
   
		   