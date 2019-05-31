<%@page import ="java.sql.*"%>

<%
	String emailid1 = (String)session.getAttribute("emailid");
	if(emailid1==null)
	{
		response.sendRedirect("student-login.jsp?msg=Login Again");
	}
	else
	{
		%>
	
<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
	<div id="container">
	  <div id="header">
		<jsp:include page="student-header.jsp"/>
		
	  </div>
	  <div id="menu">
		
		<jsp:include page="student-menu.jsp"/>
		
		
	  </div>
	  
	  <div id="main">
	  
	  <%
	  
		String emailid =(String)session.getAttribute("emailid");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	
		Statement st = con.createStatement();
		String sql = "select * from students where emailid ='"+emailid+"'";
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		String name = rs.getString("name");
		String mobileno = rs.getString("mobileno");
		String gender = rs.getString("gender");
		String dob = rs.getString("dob");
		String qualification = rs.getString("qualification");
		String address = rs.getString("address");
	
	%>
		<center>
		<br>
		<br>
		<table border="3" cellspacing="2" cellpadding="7">
		</br>
	
		<tr>
		<font color="white">
			<td><font color="white">Name </font></td>
			<td><font color="white"><%=name %></td></font>
		</tr>
	
		<tr>
			<td><font color="white">Mobile No</font> </td>
			<td><font color="white"><%=mobileno %></font></td>
		</tr>
	
		<tr>
			<td><font color="white">Gender </font></td>
			<td><font color="white"><%=gender %></font></td>
		</tr>
	
		<tr>
			<td><font color="white">DOB </font></td>
			<td><font color="white"><%=dob %></font></td>
		</tr>
	
		<tr>
			<td><font color="white">Qualification </font></td>
			<td><font color="white"><%=qualification %></font></td>
		</tr>
	
		<tr>
			<td><font color="white">Address </font></td>
			<td><font color="white"><%=address %></font></td>
		</tr>
		</B>
		</B>
		</B>
		</font>

	</table>
	</center>	
		
		
	  
	 </div>
	  <div id="footer">
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>
<%
	}
	%>