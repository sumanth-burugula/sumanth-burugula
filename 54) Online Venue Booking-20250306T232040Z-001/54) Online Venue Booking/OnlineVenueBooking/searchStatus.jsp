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

	<h2><a href="#">Venue Booking Status</a></h2>
	<div class="articles">
	<table bgcolor="#FFD8AF" width="560" height="310"  border="">
	
 <%!
   
     Connection con=null;
     ResultSet rs,rs1; 
     Statement stmt=null,st=null; 
     String s1,s2,s3,s4,s5,s6,s7,s8,s9,vname;
     java.sql.Date fd,ld;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String vname=request.getParameter("vname");
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
    s2=rs.getString("vname");
    s3=rs.getString("vaddress");
    s4=rs.getString("cperson");
    s5=rs.getString("cpnum");
    s6=rs.getString("seating");
    s7=rs.getString("dining");
    s8=rs.getString("parking");
    s9=rs.getString("other");
   
    %>
    
	
	
	<tr align="center">
	<tr align="center"><td>Venue Name</td><td><%=s2 %></td></tr>
	<tr align="center"><td>Venue Address</td><td><%=s3 %></td></tr>
	<tr align="center"><td>Contact Person</td><td><%=s4 %></td></tr>
	<tr align="center"><td>Phone Number</td><td><%=s5 %></td></tr>
	<tr align="center"><td>Seating Details</td><td><%=s6 %></td></tr>
	<tr align="center"><td>Dining Details</td><td><%=s7 %></td></tr>
	<tr align="center"><td>Parking Details</td><td><%=s8 %></td></tr>
	<tr align="center"><td>Other Details</td><td><%=s9 %></td></tr>
	</tr>
	
    <%
  
    
    System.out.println(s1);
    System.out.println(s2);
    }
     
	st=con.createStatement();
    String q="select fdate , ldate from venuestatus where vname='"+vname+"'";
    rs1=st.executeQuery(q);
    System.out.println("venue status exe.....");
   if(rs1.next())
    {
    fd=rs1.getDate("fdate");
    ld=rs1.getDate("ldate");
    System.out.println(fd);
    System.out.println(ld);
    
    %>
    <tr align="center"><td>From Date</td><td><%=fd %></td></tr>
    <tr align="center"><td>To Date</td><td><%=ld %></td></tr>
    <%
    }
    rs1.close();
    rs.close();
    st.close();
    con.close();
    
    }catch(Exception e)
    {
    e.printStackTrace();
    }
	 %>
	 <tr><td align="center" colspan="2"><a href="reserve.jsp">To Book Online</a></td></tr>
	 <tr><td align="center" colspan="2"><a href="searchVenue.jsp">Back</a></td></tr>
	  </table>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./vmenu.html" />
	<img src="images/5.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="200"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>