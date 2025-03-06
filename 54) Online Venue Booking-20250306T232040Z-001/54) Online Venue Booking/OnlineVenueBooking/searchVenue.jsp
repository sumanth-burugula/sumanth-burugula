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
<div id="right">

	<h2><a href="#">Venue Details</a></h2>
	<div class="articles">
	<form action="./searchStatus.jsp" method="post">
	<table bgcolor="#FFD8AF" width="560" height=""  border="">
	<tr><th>Select </th>
	<th>Venue Name</th>
	<th>Venue Address</th>
	</tr>
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
    String Query="select * from venuedetails";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    while (rs.next())
    {  
    System.out.println("entered............");
    s2=rs.getString("vname");
    s3=rs.getString("vaddress");
    session.setAttribute("vname",s2); 
   
    %>
    
	
	
	<tr align="center">
	<td><input type="radio" name="vname" value="<%=s2 %>"/></td>
	<td><%=s2 %></td>
	<td><%=s3 %></td>
	</tr>
	
    <%
	session.setAttribute("vname",s2);    
    
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
  <tr><td align="center" colspan="3"><input type="submit" value="Submit"></td></tr>
    </table>
    </form>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./vmenu.html" />
	<img src="images/5.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="180"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>