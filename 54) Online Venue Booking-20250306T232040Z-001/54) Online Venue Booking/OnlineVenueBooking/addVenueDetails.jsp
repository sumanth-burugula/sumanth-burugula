<%@ page import="com.krest.DBConnection"%>
<%@ page import="java.sql.*" %>
<%!
 Connection con=null;
     ResultSet rs=null; 
     Statement st=null; 
String s1,s2,s3,s4,s5,s6,s7,s8;
int c;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
	st=con.createStatement();
	
   	s1=request.getParameter("vname");
   	s2=request.getParameter("vaddress");
 	s3=request.getParameter("cperson");
    s4=request.getParameter("pno");
    s5=request.getParameter("seating");
    s6=request.getParameter("dining");
    s7=request.getParameter("parking");
    s8=request.getParameter("other");

  
  System.out.println(s1);
  System.out.println(s2);
  System.out.println(s3);
  System.out.println(s4);
  System.out.println(s5);
  System.out.println(s6);
  System.out.println(s7);
  System.out.println(s8);
  
  String uid=(String)session.getAttribute("name");
  
  String cit="insert into venuedetails values('"+uid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')" ;
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
	 rs.close();
    st.close();
    con.close();
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
