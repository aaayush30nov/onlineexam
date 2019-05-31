<%@page import ="java.sql.*"%>

<%
 String cpassword =request.getParameter("cpassword");
 String npassword =request.getParameter("npassword");
 String emailid =(String)session.getAttribute("emailid");
 
 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st = con.createStatement();
	String sql ="select * from students where emailid='"+emailid+"'and password='"+cpassword+"'";
	ResultSet rs = st.executeQuery(sql);
	if(rs.next())
	{
	String sql1 ="update students set password='"+npassword+"'where emailid='"+emailid+"'";
	int count = st.executeUpdate(sql1);
	if(count>0)
	{
	response.sendRedirect("student-password.jsp?msg=Password Changed");
	}
	else
	{
	response.sendRedirect("student-password.jsp?msg=Try again");
	}
	}
	else
	{
	response.sendRedirect("student-password.jsp?msg=Current Password is Invaild");
	}
	%>
	