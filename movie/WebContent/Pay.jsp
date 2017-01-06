
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="javax.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightgrey">
<%
String Name=request.getParameter("Name");
String AccountNo=request.getParameter("AccountNo");
String Pin=request.getParameter("Pin");
String Balance=request.getParameter("Balance");
/*String message1=request.getParameter("message");*/


int cnt=Integer.parseInt(session.getAttribute("cnt").toString());
	String Theater=session.getAttribute("Theater").toString();
	String Movie=session.getAttribute("Movie").toString();
	String Time=session.getAttribute("Time").toString();
	String days=session.getAttribute("days").toString();
	String message=session.getAttribute("message").toString();
	String statuss=session.getAttribute("statuss").toString();
	int seatno=Integer.parseInt(session.getAttribute("seatno").toString());
	int money=0;

	if(cnt==1 && Theater.equals("Vishal") && Time.equals("9am-12am"))
	{
		money=150;
		/*out.print(money);*/
	}
	if(cnt==2 && Theater.equals("Vishal")&& Time.equals("9am-12am"))
	{
		money=150*cnt;
		/*out.print(money);*/
	}
	if(cnt==3 && Theater.equals("Vishal")&& Time.equals("9am-12am"))
	{
		money=150*cnt;
		/*out.print(money);*/
	}
	if(cnt==1 && Theater.equals("Pacific")&& Time.equals("3pm-6pm"))
	{
		money=250;
		/*out.print(money);*/
	}
	if(cnt==2 && Theater.equals("Pacific")&& Time.equals("3pm-6pm"))
	{
		money=250*cnt;
		/*out.print(money);*/
	}
	if(cnt==3 && Theater.equals("Pacific")&& Time.equals("3pm-6pm"))
	{
		/*money=250*cnt;*/
		out.print(money);
	}
	
	if(cnt==1 && Theater.equals("Mgf")&& Time.equals("12am-3pm" ))
	{
		money=200;
		/*out.print(money);*/
	}
	if(cnt==2 && Theater.equals("Mgf")&& Time.equals("12am-3pm"))
	{
		money=200*cnt;
		/*out.print(money);*/
	}
	if(cnt==3 && Theater.equals("Mgf")&& Time.equals("12am-3pm"))
	{
		money=200*cnt;
		/*out.print(money);*/
	}
	if(cnt==1 && Theater.equals("Raj")&& Time.equals("6pm-9pm" ))
	{
		money=100;
		/*out.print(money);*/
	}
	if(cnt==2 && Theater.equals("Raj")&& Time.equals("6pm-9pm" ))
	{
		money=100*cnt;
		/*out.print(money);*/
	}
	if(cnt==3 && Theater.equals("Raj")&& Time.equals("6pm-9pm" ))
	{
		money=100*cnt;
		/*out.print(money);*/
	}
	if(cnt==1 && Theater.equals("Bmg")&& Time.equals("9pm-12pm" ))
	{
		money=90;
/*		out.print(money);*/
	}
	if(cnt==2 && Theater.equals("Bmg")&& Time.equals("9pm-12pm" ))
	{
		money=90*cnt;
	/*	out.print(money);*/
	}
	if(cnt==3 && Theater.equals("Bmg")&& Time.equals("9pm-12pm" ))
	{
		money=90*cnt;
		/*out.print(money);*/
	}
out.print("Your bill is"  +" "+ money +"  ");
out.print("    ");



/*String x=request.getParameter("x");
String b=request.getParameter("b");
String c=request.getParameter("c");
String days=request.getParameter("days");
String Time=request.getParameter("Time");*/




try {
    Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con =DriverManager.getConnection ("jdbc:mysql://localhost:3306/movie","root","root");
if(Name!=""|| AccountNo!=null|| Pin!=null)

{
	PreparedStatement ps = con.prepareStatement("insert into payment values(?,?,?,?)");
    ps.setString(1, Name);
    ps.setString(2, AccountNo);
    ps.setString(3, Pin);
    ps.setString(4,Balance);
   /* out.println("Data save"+"   "+"  ");*/
    out.println("  "+" ");
   int val=ps.executeUpdate();
    PreparedStatement ps3 = con.prepareStatement("select * from payment where Name=? and AccountNo=?and Pin=?");
    ps3.setString(1, Name);		
    ps3.setString(2, AccountNo);
    	    ps3.setString(3, Pin);
    	    ResultSet rs1=ps3.executeQuery();
    	    int j=0;
    	   while(rs1.next())
    	    {
    	    	j=rs1.getInt(4);
    	    }
    	   /* out.print(ps3);*/
    	    int Balance1=j-money;
    	    PreparedStatement ps4=con.prepareStatement("update payment set Balance=? where Name=? and AccountNo=?and Pin=?");
    	    ps4.setInt(1,Balance1);
    	    ps4.setString(2, Name);
    	    ps4.setString(3, AccountNo);
    	    ps4.setString(4,Pin);
    	    ps4.executeUpdate();
    	    out.println("  "+"  ");
    		out.println( "Your balance left is"+ " "+   Balance1+" ");
    	    
    	  
if(val>0)
{
  	 PreparedStatement ps2 = con.prepareStatement("select *from details where Theatre=? and days=? and time=?");
  	ps2.setString(1,Theater);
  	ps2.setString(2,days);
	ps2.setString(3, Time);
		ResultSet rs=ps2.executeQuery();
		int i=0;
		while(rs.next())
		{
		
			i=rs.getInt(5);
		}
		/*out.print(Theater+"  ");
		out.print(Time+"  ");*/
		 PreparedStatement ps6 = con.prepareStatement("select * from movie  where Movie=?");
			ps6.setString(1,Movie);
			ResultSet rs3=ps6.executeQuery();
			out.println( "USER  CHOOSE"+"  "+"MOVIE " +Movie +" "+"Place " + Theater +" "+" "+"days"+days +"Time "+ Time);
			out.println(days);
			int seatno2=seatno-1;
			int seatno3=seatno-2;
			int seatno4=seatno+1;
			int seatno5=seatno+2;
			PreparedStatement ps7 = con.prepareStatement("select * from booking  where message=? and seatno=?");
				ps7.setString(1,message);
				ps7.setInt(2,seatno);
				ResultSet rs7=ps7.executeQuery();
				out.println( "USER  CHOOSE"+"  "+message);
				if(cnt==1 && seatno>2)
				{
					out.print("Selected Seat is"+seatno);
				}
				if(cnt==2 && seatno>2)
				{
					out.print("Selected Seat is"+seatno+"and"+seatno2);
				}
				if(cnt==3 && seatno>2)
				{
					out.print("Selected Seat is"+seatno+  "and"  +" " +seatno2+  "and"+" " +seatno3);
				}
				if(cnt==1 && seatno==1)
				{
				out.print(seatno);
                 }
				if(cnt==2 && seatno==1)
				{
					out.print(seatno);
					out.print("and");
				out.print(seatno4);
                  }
				if(cnt==3 && seatno==1)
				{
					out.print(seatno);
					out.print(",");
					out.print(seatno4);
					out.print("and");
				out.print(seatno5);
				}
				if(cnt==1 && seatno==2)
				{
				out.print(seatno);
                 }
				if(cnt==2 && seatno==2)
				{
					out.print(seatno);
					out.print("and");
				out.print(seatno4);
					
                  }
				if(cnt==3 && seatno==2)
				{
				out.print(seatno);
				out.print(",");
				out.print(seatno4);
				out.print("and");
				out.print(seatno5);
				}
				/*PreparedStatement ps33 = con.prepareStatement("select * from seats where seatno=? and statuss=?");
    		  	ps33.setInt(1,seatno);
    		  	ps33.setString(2,statuss);
    				ResultSet rs2=ps33.executeQuery();
    				String m=null;
    				while(rs.next())
    				{
    				
    					m=rs.getString(2);
    				}
    				out.print(ps33);
    				out.print(m);
    				String k="book";
    				String l="book";
			if(cnt==3)
			{
				 seatno2=seatno-1;
				 seatno3=seatno-2;
				 PreparedStatement ps35=con.prepareStatement("update seats set statuss=? where seatno=? ");
				 ps35.setInt(1,seatno);
				 ps35.setInt(2,seatno2);
	    		 	ps35.setInt(3,seatno3);
	    	 ps35.executeUpdate();
	    	 out.print(ps35);
			}*/



		
	int AvlSeats=i-cnt;
	
	PreparedStatement ps1=con.prepareStatement("update details set seats=? where Theatre=? and Time=?");
	ps1.setInt(1, AvlSeats);
	ps1.setString(2,Theater);
		ps1.setString(3, Time);

     ps1.executeUpdate();
	out.print("  ");
	out.println("Seats left is"  +AvlSeats + "   ");
	if(AvlSeats==0)
	{
	response.sendRedirect("Housefull.html");
	}
	if(AvlSeats==-1)
	{
	response.sendRedirect("Housefull.html");
	}
	if(AvlSeats==-2)
	{
	response.sendRedirect("Housefull.html");
	}
	if(AvlSeats==-3)
	{
	response.sendRedirect("Housefull.html");
	}

	
	
	}


}
}
catch (Exception e) {
    out.println(e);
    } 

%>
<br>
<br>

<div align="center">
<input type="button" onclick="window.print();" value="print">&nbsp;&nbsp;<a href="index.html"><input type="button" value="main menu"></a>
</div>

</body>
</html>




	
   
   
		   