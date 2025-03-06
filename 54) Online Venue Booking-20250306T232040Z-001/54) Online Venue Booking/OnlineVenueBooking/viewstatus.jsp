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
	<table bgcolor="#FFD8AF" width="560" height=""  border="">
	<tr><th>Visitor Name</th><th>From Date</th><th>To Date</th></tr>
	
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
    
	st=con.createStatement();
    String q="select * from venuestatus where vname='"+vname+"'";
    rs1=st.executeQuery(q);
    while(rs1.next())
    {
    String uname=rs1.getString("uname");
    fd=rs1.getDate("fdate");
    ld=rs1.getDate("ldate");
    %>
    <tr align="center"><td><%=uname %></td>
    <td><%=fd %></td>
    <td><%=ld %></td></tr>
    
    <%
    }
     rs.close();
    st.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
	 %>
	 
	 <tr><td colspan="3" align="center"><a href="veiwS.jsp">Back</a></td></tr>
	  </table>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./pmenu.html" />
	<img src="images/5.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="175" height="180"/>
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>