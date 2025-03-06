<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Oranges</title>
<meta http-equiv="Content-Language" content="English" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<script type="text/javascript">

function validate() {
		var fname = (document.forms["regform"]["fname"].value);
		var lname = (document.forms["regform"]["lname"].value);
		var preaddress = (document.forms["regform"]["preaddress"].value);
		var peraddress = (document.forms["regform"]["peraddress"].value);
		var email= (document.forms["regform"]["email"].value);
		var contact = (document.forms["regform"]["contact"].value);
		var role = (document.forms["regform"]["role"].value);
		var uname = (document.forms["regform"]["uname"].value);
		var pword = (document.forms["regform"]["pword"].value);

	if (fname == null || fname == "") {
		alert("Enter First Name");
		return false;
	}
	if (lname == null || lname == "") {
		alert("Enter Last Name");
		return false;
	}
	if (preaddress == null || preaddress == "") {
		alert("Enter Present Address");
		return false;
	}
	if (peraddress == null || peraddress == "") {
		alert("Enter Perminent Address");
		return false;
	}
	if (email == null || email == "") {
		alert("Enter Email Id");
		return false;
	}
	if (contact == null || contact == "") {
		alert("Enter Contact");
		return false;
	}
	if (uname == null || uname == "") {
		alert("Please Choose Your UserName");
		return false;
	}
	
	if (pword == null || pword == "") {
		alert("Please Choose Your PassWord");
		return false;
	}
	if (role == null || role == "") {
		alert("Please Select Your Role");
		return false;
	}
}
</script>
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time ,Any Where</h2>
</div>

<div id="right">
<br/>
<h3>Register Here</h3>
<br/>
<div class="articles">
<form action="./registration.jsp" method="post" name="regform" onsubmit="return validate()">
<table width="550" height="350" bgcolor="#FFD8AF">
<tr><td align="right"><font color="">First Name::</font></td><td><input type="text" name="fname"/></td></tr>
<tr><td align="right"><font color="">Last Name::</font></td><td><input type="text" name="lname"/></td></tr>
<tr><td align="right"><font color="">PresentAddress::</font></td><td><input type="text" name="preaddress"/></td></tr>
<tr><td align="right"><font color="">Perminent Address::</font></td><td><input type="text" name="peraddress"/></td></tr>
<tr><td align="right"><font color="">Email Id::</font></td><td><input type="text" name="email"/></td></tr>
<tr><td align="right"><font color="">Contact Number::</font></td><td><input type="text" name="contact"/></td></tr>
<tr><td align="right"><font color="">Prefered User Name::</font></td><td><input type="text" name="uname"/></td></tr>
<tr><td align="right"><font color="">Pass Word::</font></td><td><input type="password" name="pword"/></td></tr>
<tr><td align="right"><font color="">Role::</font></td><td><input type="text" name="role" value="visitor" readonly="readonly"/ ></td></tr>

<tr></tr>
<tr></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Submit"/><input type="reset" value="Reset"/></td></tr>

</table>

</form>

<br/>
<br /><br />
</div>
</div>

<div id="left"> 
<jsp:include page="./menu.html" />

</div>
<div style="clear: both;"> </div>

<div id="footer">
<jsp:include page="./footer.html" /></div>
</div>


</body>
</html>