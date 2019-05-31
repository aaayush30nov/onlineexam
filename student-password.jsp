<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
		
		<script language="javascript" src="md5.js"></script>
		<script language="javascript">
		function convert()
		{
			password1 =document.getElementById("password1").value;
			password1 = md5(password1);
			document.getElementById("password1").value =password1;
			
			password2 =document.getElementById("password2").value;
			password2 = md5(password2);
			document.getElementById("password2").value =password2;
		}
		</script>
		
		
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
	  <br>
	  
	  <%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
			<br>
	  <h3>Change Password</h3>
	  <form action ="update-student-password.jsp" method="post" onsubmit="convert()">
	  
	  
	  
	  <table>
	  <tr>
		<td>Current Password:</td>
		<td><input type="password" name="cpassword" id="password1"/><td>
		</tr>
		<tr>
		<td>New Password:</td>
		<td><input type="password" name="npassword" id="password2"/><td>
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