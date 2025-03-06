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
    String Query="select * from user_REG where role='visitor'";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    
    %>
    
    <div id="right">

	<h2><a href="#">Venues Details</a></h2>
	<div class="articles">
	<table bgcolor="#FFD8AF" width="550" border="">
	<tr><th>First Name</th><th>Last Name</th><th>Present Address</th><th>Permenent Address</th><th>Email Id</th><th>Phone Number</th></tr>
    
    
    <%
    while (rs.next())
    {  
    System.out.println("entered............");
    s1=rs.getString("FIRSTNAME");
    s2=rs.getString("LASTNAME");
    s3=rs.getString("PREADDRESS");
   	s4=rs.getString("PERADDRESS");
    s5=rs.getString("EMAIL");
    s6=rs.getString("CONTACT");
   
	%>
	<tr align="center"><td><%=s1 %></td><td><%=s2 %></td><td><%=s3 %></td><td><%=s4 %></td><td><%=s5 %></td><td><%=s6 %></td></tr>
	<%    
    
    }
     rs.close();
    stmt.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  </table>
	<br/>
	</div>
	</div>
    
	<div id="left"> 

	<jsp:include page="./adminmenu.html" />
	<img src="images/7.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="180"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>