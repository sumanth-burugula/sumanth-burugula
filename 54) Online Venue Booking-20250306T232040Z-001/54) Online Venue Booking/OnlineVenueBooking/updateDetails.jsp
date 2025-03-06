<%@ page import="com.krest.DBConnection"%>
<%@ page import="java.sql.*" %>
<%!
 Connection con=null;
     ResultSet rs=null; 
     Statement st=null; 
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int c;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
	st=con.createStatement();
	
	String s1=(String)session.getAttribute("name");
	
   	s2=request.getParameter("vname");
   	s3=request.getParameter("vaddress");
 	s4=request.getParameter("cperson");
    s5=request.getParameter("cpnum");
    s6=request.getParameter("seating");
    s7=request.getParameter("dining");
    s8=request.getParameter("parking");
    s9=request.getParameter("other");

  
  System.out.println(s1);
  System.out.println(s2);
  System.out.println(s3);
  System.out.println(s4);
  System.out.println(s5);
  System.out.println(s6);
  System.out.println(s7);
  System.out.println(s8);
  
  String uid=(String)session.getAttribute("name");
  
  String cit="update venuedetails set vaddress='"+s3+"',cperson='"+s4+"',cpnum='"+s5+"',seating='"+s6+"',dining='"+s7+"',parking='"+s8+"',other='"+s9+"' where vname='"+s2+"'" ;
  c=st.executeUpdate(cit);
  if(c>0){
  %>
  <jsp:forward page="./succes.jsp"></jsp:forward>
  <%
  }
  else
	{%>
	<jsp:forward page="./failure.jsp"></jsp:forward>
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
  con.close();
  }
  catch(Exception e)
  {
  e.printStackTrace();
  }
%>
