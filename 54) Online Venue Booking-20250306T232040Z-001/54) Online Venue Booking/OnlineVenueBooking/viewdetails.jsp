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
     String s1,s2,s3,s4,s5,s6,s7,s8,s9,vname;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String uid=(String)session.getAttribute("name");
    vname=request.getParameter("vname");
    System.out.println(uid);
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select * from venuedetails where vname='"+vname+"'";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    while (rs.next())
    {  
    System.out.println("entered............");
    s1=rs.getString("uname");
    s2=rs.getString("vname");
    s3=rs.getString("vaddress");
   	s4=rs.getString("cperson");
    s5=rs.getString("cpnum");
    s6=rs.getString("seating");
    s7=rs.getString("dining");
    s8=rs.getString("parking");
    s9=rs.getString("other");
    
	session.setAttribute("vname",s2);;    
    
    System.out.println(s1);
    System.out.println(s2);
    }
     rs.close();
    stmt.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  
    <div id="right">

	<h2><a href="#">Venue Details</a></h2>
	<div class="articles">
	<table bgcolor="#FFD8AF" width="300" height="350" >
	<tr><td>User Id:</td><td><%=s1 %></td></tr>
	<tr><td>Venue Name:</td><td><%=s2 %></td></tr>
	<tr><td>Venue Address:</td><td><%=s3 %></td></tr>
	<tr><td>Contact Person Name:</td><td><%=s4 %></td></tr>
	<tr><td>Phone Number:</td><td><%=s5 %></td></tr>
	<tr><td>Seating Details:</td><td><%=s6 %></td></tr>
	<tr><td>Dining Hall Details:</td><td><%=s7 %></td></tr>
	<tr><td>Parking Details:</td><td><%=s8 %></td></tr>
	<tr><td>Other Details:</td><td><%=s9 %></td></tr>
	</table>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./pmenu.html" />
	<img src="images/7.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="180"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>