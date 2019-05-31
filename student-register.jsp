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
			<h2>Student Registration</h2>
			<hr/>
			<%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
			
			
			<form action="insert-student.jsp" method="post" onsubmit="convert()">
			<table cellpadding="7">
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" required/></td>
			</tr>
			<tr>
				<td>EmailId:</td>
				<td><input type="text" name="emailid" required/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="password" required/></td>
			</tr>
			<tr>
				<td>Mobile NO:</td>
				<td><input type="text" name="mobileno" required/></td
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="male" required/> Male
				<input type="radio" name="gender" value="female" required/> Female
				
				</td>
			</tr>
			<tr>
				<td>DOB:</td>
				<td><input type="date" name="dob" required/></td>
			</tr>
			<tr>
				<td>Qualification:</td>
				<td><select name="qualification" required>
				<option>select</option>
				<option>PhD</option>
				<option>PG</option>
				<option>UG</option>
				<option>+2</option>
				<option>10th</option>
			
					</select>
				</td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><textarea name="address" required ></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"/>
				<td><input type="reset" value="Cancel"/>
				</td>
			</tr>
			</table>
			</form>
			
	  
	  <br>
	 	 </div>
	  <div id="footer">
	  <br>
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>