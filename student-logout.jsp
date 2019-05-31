
	
	<html>
		<head>
		<script type="text/javascript">
		window.history.forward();
		function noBack()
		{
			window.history.forward():
		}
		</script>
			<meta http-equiv="refresh" content="1;url=student-login.jsp?msg=Logout Successfully"/>
		</head>
		<body onload="noBack();"onpageshow="if(event.persisted) noBack();" onUpload="">
		<%
	session.invalidate();
	//response.sendRedirect("student-login.jsp?msg=Logout Successfully");
	
	%>
		
		
		Logout....
		</body>
		
		
	<html>
	