<%@page import ="java.sql.*"%>

<%
 String cpassword =request.getParameter("cpassword");
 String npassword =request.getParameter("npassword");
 String loginid =(String)session.getAttribute("loginid");
 
 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st = con.createStatement();
	String sql ="select * from admin where loginid='"+loginid+"'and password='"+cpassword+"'";
	ResultSet rs = st.executeQuery(sql);
	if(rs.next())
	{
	String sql1 ="update admin set password='"+npassword+"'where loginid='"+loginid+"'";
	int count = st.executeUpdate(sql1);
	if(count>0)
	{
	response.sendRedirect("admin-password.jsp?msg=Password Changed");
	}
	else
	{
	response.sendRedirect("admin-password.jsp?msg=Try again");
	}
	}
	else
	{
	response.sendRedirect("admin-password.jsp?msg=Current Password is Invaild");
	}
	%>
	
	