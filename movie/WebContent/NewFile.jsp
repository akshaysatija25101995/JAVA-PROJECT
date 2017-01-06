<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function msg(package)
{
s1=package.value;	
	if(s1=="platinum")
		{
		document.getElementById("message").value="Balcony row selected";
		}
	else if(s1=="gold")
	{
		document.getElementById("message").value="Middle row selected";
	}
	else
		{
		document.getElementById("message").value="Front row selected";
		}
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
message:<input type="text" id="message"  readonly="readonly" name="message" size="40" style="border:hidden;background-color:grey;" ><br><br><br>
Class: <input type="radio" name="package" value="platinum" onClick="msg(this)">platinum &nbsp;&nbsp;<input type="radio" name="package" value="gold" onClick="msg(this)" >gold&nbsp;&nbsp;<input type="radio" name="package" value="silver" onClick="msg(this)" >silver
</body>
</html>