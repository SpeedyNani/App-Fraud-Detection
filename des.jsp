<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String id = request.getParameter("id");



try
{

	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = "update provider set status='accept' where id='"+id+"' ";
	st1.executeUpdate(sss1);
	
	response.sendRedirect("newproviders.jsp");
    
		con1=null;
	


}
catch(Exception e1)
{
out.println(e1);
}

%>