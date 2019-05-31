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
	  
		String emailid =(String)session.getAttribute("emailid");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	
		Statement st = con.createStatement();
		String sql = "select * from result";
		ResultSet rs = st.executeQuery(sql);
	
		%>
			<br>
			<table border="1" cellpadding="7" cellspacing="0" width="100%">
			<tr>
				<th>Email Id</th>
				<th>mark</th>
				<th>total</th>
			</tr>
			<%
			int count =0;
			while(rs.next())
			{
				count++;
				%>
				<tr>
					<td><%=rs.getString("emailid") %></td>
					<td><%= rs.getString("correct")%></td>
					<td><%= rs.getString("total_mark")%></td>
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