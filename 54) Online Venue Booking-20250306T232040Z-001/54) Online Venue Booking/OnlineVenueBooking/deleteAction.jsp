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
     Statement stmt=null; 
     String s1,vname;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    vname=request.getParameter("vname");
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="delete from venuedetails where vname='"+vname+"'";
    System.out.println(Query);
    stmt.executeUpdate(Query);
    
    System.out.println("Query Executed");
    stmt.close();
    con.close();  
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  
    <div id="right">

	<h2><a href="#"><%= vname %>......Venue Details Deleted successfully</a></h2>
	<a href="delete.jsp">Back</a>
	<div class="articles">
	
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