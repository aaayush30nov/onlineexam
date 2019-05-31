<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
	<div id="container">
	  <div id="header">
		<jsp:include page="header.jsp"/>
		
	  </div>
	  
	  
	  <div id="main">
	  <br>
	  <%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
	  
			<h2>Admin Login Registration</h2>
			<hr/>
			
			
			<form action="check-admin.jsp" method="post">
			<table cellpadding="7">
			<tr>
				<td>LoginId:</td>
				<td><input type="text" name="loginid"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Sign In"/>
				<td><input type="reset" value="Cancel"/>
				</td>
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