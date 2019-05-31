<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
		
		<script language="javascript" src="md5.js"></script>
		<script language="javascript">
		function convert()
		{
			password =document.getElementById("password").value;
			password = md5(password);
			document.getElementById("password").value =password;
		}
		</script>
		
	</head>
	<body>
	<div id="container">
	  <div id="header">
		<jsp:include page="header.jsp"/>
		
	  </div>
	  <div id="menu">
		
		<jsp:include page="menu.jsp"/>
		
		
	  </div>
	  <div id="slider">
	  <img src="line.jpg" width="980" height="150"/>
	  </div>
	  <div id="main">
	  <br>
	  
			<h2>Student Login Form</h2>
			<hr/>
			<%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
			
			<form action="check-student.jsp" method="post" onsubmit="convert()">
			<table cellpadding="7">
			<tr>
				<td>EmailId:</td>
				<td><input type="text" name="emailid"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="password" /></td>
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