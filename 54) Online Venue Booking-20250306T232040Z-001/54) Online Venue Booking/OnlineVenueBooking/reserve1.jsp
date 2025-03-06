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
<%
String s1=(String)request.getParameter("vname");
 %>
 
    <div id="right">

	<h2><a href="#">Enter Details</a></h2>
	<div class="articles">
	<form method="post" action="./reserveAction.jsp">
	<table bgcolor="#FFD8AF" width="500" height="" border="" >
	<tr ><td align="center">Venue Name</td><td><input type="text" name="vname" value="<%=s1%>" readonly="readonly"/></td></tr>
	<tr><td align="center">From Date</td><td><input type="text" name="fdate"/>	(Ex:2008-03-19)</td></tr>
	<tr><td align="center">To Date</td><td><input type="text" name="tdate"/>	(Ex:2008-03-19)</td></tr>
	<tr align="center"><td colspan="2"><input type="submit" value="Submit"/></td></tr>
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