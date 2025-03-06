<%@ page import="com.krest.DBConnection"%>
<%@ page import="java.sql.*"  %>
 <%!
   
     Connection con=null;
     ResultSet rs; 
     Statement stmt=null; 
     String role;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
   String uname=request.getParameter("uname");
   String pword=request.getParameter("pword");
   role=request.getParameter("role");
   String Query="select * from login where username='"+uname+"' and password='"+pword+"' and role='"+role+"'";
   stmt=con.createStatement();
   rs=stmt.executeQuery(Query);
 System.out.println(role);
 System.out.println(uname);
 System.out.println(pword);
  System.out.println(con+"..........connection created");
  
   if (rs.next())
  {  
  System.out.println("entered");
   if(uname.equals(rs.getString("username")) && pword.equals(rs.getString("password")) && role.equals("admin"))
	{
	session.setAttribute("name",uname);
	response.sendRedirect("admin.jsp");
	}
	 else
	 if(uname.equals(rs.getString("username")) && pword.equals(rs.getString("password")) && role.equals("vprovider"))
	{
	session.setAttribute("name",uname);
	response.sendRedirect("provider.jsp");
	}
else
if(uname.equals(rs.getString("username")) && pword.equals(rs.getString("password")) && role.equals("visitor")) 
{
session.setAttribute("name",uname);
response.sendRedirect("visitor.jsp");
}
}
else
{
response.sendRedirect("error.html");
}
rs.close();
stmt.close();
con.close();

}catch(Exception e)
{
e.printStackTrace();
}

%>
 