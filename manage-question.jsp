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
	  <%
				String msg = request.getParameter("msg");
				
			if(msg!=null)
			{
				
				out.println(msg);
			}
			
				
			%>
	  <h3>Add Question</h3>
	  
		
		
		<form action="insert_question.jsp" method="post">
		
	<table >
	<tr>
		<td><font color="white">Question no.</td>
		<td><input type="text" name="qno"></td>
	</tr>
	<tr>
		<td><font color="white">Question</td>
		<td><textarea name="question"></textarea></td>
	</tr>
	<tr>
	 <td><font color="white">Option1</td>
	 <td><input type="text" name="option1"></td>
	 </tr>
		<tr>
	 <td><font color="white">Option2</td>
	 <td><input type="text" name="option2"></td>
	 </tr>
	<tr>
	 <td><font color="white">Option3</td>
	 <td><input type="text" name="option3"></td>
	 </tr>
	<tr>
	 <td><font color="white">Option4</td>
	 <td><input type="text" name="option4"></td>
	 </tr>
	<tr>
	<td><font color="white">Answer</td>
	<td>
	<select name="answer">
	<option>Select</option>
	<option>Option1</option>
	<option>Option2</option>
	<option>Option3</option>
	<option>Option4</option>
	</select>
	</td>
	<tr>
	<td></td>
	 <td><input type="submit" name="btn1" value="ADD Question"><input type="reset" name="btn2" value="Cancel"></td>
	</tr>
	</table>
	</font>
	</form>
	<a href="extract-question.jsp">View Question</a>
	
	  
	  
	  <br>
	 </div>
	  <div id="footer">
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>