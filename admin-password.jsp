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
	  <br>
	  
	  <h3>Change Password</h3>
	  <%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
	  
	  <form action ="update-admin-password.jsp" method="post">
	  
	  
	  
	  <table>
	  <tr>
		<td>Current Password:</td>
		<td><input type="password" name="cpassword"/><td>
		</tr>
		<tr>
		<td>New Password:</td>
		<td><input type="password" name="npassword"/><td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="update"/><td>
		</tr>
		</table>
		</form>
		
		
	  
	  
	  <br>
	 </div>
	  <div id="footer">
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>