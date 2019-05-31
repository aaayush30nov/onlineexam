<%@page import="java.sql.*"%>
<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
	<div id="container">
	  <div id="header">
		<jsp:include page="admin-header.jsp"/>
		
	  </div>
	  <div id="menu">
		
		<jsp:include page="admin-menu.jsp"/>
		
		
	  </div>
	  
	  <div id="main">
	 
	 <%
	  

		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	
		Statement st = con.createStatement();
		String sql = "select * from students";
		ResultSet rs = st.executeQuery(sql);
		//rs.next();
		%>
			<br>
			<table border="1" cellpadding="7" cellspacing="0" width="100%">
			<tr>
				<th>Name</th>
				<th>Email id</th>
				<th>Mobile</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
			<%
			while(rs.next())
			{
				String emailid = rs.getString("emailid");
				%>
				<tr>
					<td><%=rs.getString("name") %></td>
					<td><%= rs.getString("emailid")%></td>
					<td><%= rs.getString("mobileno")%></td>
					<td><%= rs.getString("address")%></td>
					<td><a href="delete-student.jsp?emailid=<%=emailid %>">Delete</a></td>
				</tr>
				<%
			}
			%>
			</table>
	  
	 </div>
	  <div id="footer">
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>