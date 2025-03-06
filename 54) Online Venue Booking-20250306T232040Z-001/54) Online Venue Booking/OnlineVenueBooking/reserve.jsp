<%@ page import="com.krest.DBConnection"%>
<%@ page import="java.sql.*"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Oranges</title>
<meta http-equiv="Content-Language" content="English" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time ,Any Where</h2>
</div>

 <%!
   
     Connection con=null;
     ResultSet rs; 
     Statement stmt=null; 
     String s1;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select vname from venuedetails";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    
    
  %>  
    <div id="right">

	<h2><a href="#">Venue Details</a></h2>
	<div class="articles">
	<form method="post" action="./reserve1.jsp">
	<table bgcolor="#FFD8AF" width="350" height="" border="" >
	
	<%
	while (rs.next())
    {  
    s1=rs.getString("vname");
    %>
    <tr  align="center"><td><input type="radio" name="vname" value="<%=s1%>"/></td><td><%=s1 %></td></tr>
    <%
    }
     rs.close();
    stmt.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
	 %>
	
	<tr><td colspan="2" align="center"><input type="submit" value="Next"/></td></tr>
	</table>	 </form>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./vmenu.html" />
	<img src="images/7.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="180"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>