<%@ page import="com.krest.DBConnection"%>
<%@ page import="java.sql.*" %>
<%!
 Connection con=null;
     ResultSet rs=null; 
     Statement st=null,st1=null; 
String s1,s2,s3,s4,s5,s6,s7,s8,s9,cit1;
int c,c1;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
	st=con.createStatement();
	st1=con.createStatement();
   	s1=request.getParameter("fname");
   	s2=request.getParameter("lname");
   	s3=request.getParameter("preaddress");
 	s4=request.getParameter("peraddress");
    s5=request.getParameter("email");
    s6=request.getParameter("contact");
    s7=request.getParameter("uname");
    s8=request.getParameter("pword");
    s9=request.getParameter("role");

  
  System.out.println(s1);
  System.out.println(s2);
  System.out.println(s3);
  System.out.println(s4);
  System.out.println(s5);
  System.out.println(s6);
  System.out.println(s7);
  System.out.println(s8);
  System.out.println(s9);
  
  rs=st1.executeQuery("select username from login where username='"+s7+"'");
  if(!rs.next())
  {
  String cit="insert into provider_reg values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s9+"')" ;
  c=st.executeUpdate(cit);
  cit1="insert into login values('"+s7+"','"+s8+"','"+s9+"')";
  c1=st.executeUpdate(cit1);
  %>
	<jsp:forward page="./venue_provider_reg_succes.jsp"></jsp:forward>
	<%

  }
  else
	{%>
	<jsp:forward page="./venue_provider_reg_failure.jsp"></jsp:forward>
	<%
	}
  }catch(Exception e)
  {
   e.printStackTrace();
  }
  %>
  <%
  try
  {
  rs.close();
  st.close();
  st1.close();
  con.close();
  }
  catch(Exception e)
  {
  e.printStackTrace();
  }
%>
