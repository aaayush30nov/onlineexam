<%@page import="java.sql.*"%>

<%
	
	String name = request.getParameter("name");
	String emailid = request.getParameter("emailid");
	
	String mobileno = request.getParameter("mobileno");
	String address = request.getParameter("address");
	

	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st =con.createStatement();
	String sql ="delete from students where emailid='"+emailid+"'";
	int count =st.executeUpdate(sql);
	if(count>0)
	{
		response.sendRedirect("manage-student.jsp");
	}
	else
	{
		out.println("Try again");
	}
	con.close();
	
	
	
	
	
	
	
	
	
%>
