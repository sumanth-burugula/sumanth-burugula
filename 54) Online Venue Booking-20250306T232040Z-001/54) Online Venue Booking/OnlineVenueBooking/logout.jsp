<% session.invalidate();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Oranges</title>
<meta http-equiv="Content-Language" content="English" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>

</head>
<body onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">

<div id="wrap">

<div id="header">
<h1><a href="#">Online  Booking</a></h1>
<h2>Reserve Your Place Any Time ,Any Where</h2>
</div>

<div id="right">

<h2><a href="#">You Have Successfully Logged Out.</a></h2>
<img src="images/5.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="500" height="180"/>
<img src="images/11.jpeg" alt="Example pic" style="border: 3px solid #ccc;" width="500" height="180"/>


<div class="articles">
</div>
</div>

<div id="left"> 

<jsp:include page="./menu.html" />

</div>
<div style="clear: both;"> </div>

<div id="footer">
<jsp:include page="./footer.html" /></div></div>


</body>
</html>