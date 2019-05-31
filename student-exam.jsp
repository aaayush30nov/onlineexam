<%@page import="java.sql.*"%>

<html>
	<head>
		<title>Online Exam</title>
		<link href="style.css" rel="stylesheet" type="text/css"/>
		<script language ="javascript">
		var tim;
		var min = 5;
		var sec = 0;
		var f = new Date();
		function examTimer()
		{
			if(parseInt(sec)>0)
			{
				document.getElementById("showtime").innerHTML ="Time Remaining:"+min+" Minutes,"+sec+" Seconds";
				sec = parseInt(sec)-1;
				tim = setTimeout("examTimer()",1000);
			}
			else
			{
				if(parseInt(min)==0 && parseInt(sec)==0)
				{
					document.getElementById("showtime").innerHTML ="Time Remaining:"+min+" Minutes,"+sec+" Seconds";
					alert("Time Up");
					document.questionForm.minute.value=0;
					document.questionForm.second.value=0;
					document.questionForm.submit();
				}
				if(parseInt(sec) == 0)
				{
					document.getElementById("showtime").innerHTML ="Time Remaining:"+min+" Minutes,"+sec+" Seconds";
					
					min = parseInt(min)-1;
					sec = 59;
					tim = setTimeout("examTimer()",1000)
					
				}
			}
		}
		</script>
		
		
	</head>
	<body onload="examTimer()">
	<div id="container">
	  <div id="header">
		<jsp:include page="student-header.jsp"/>
		
	  </div>
	  <div id="menu">
		
		<jsp:include page="student-menu.jsp"/>
		
		
	  </div>
	  
	  <div id="main">
		<br/>
		<form name="questionForm" action="calculate.jsp" method="post">
		<input type="hidden" name="minute"/>
		<input type="hidden" name="second"/>
		<b id= "showtime"></b>
		<table>
		<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st =con.createStatement();
	String sql ="select * from questions";
	ResultSet rs = st.executeQuery(sql);
	int total =0;
	while(rs.next())
	{
	total++;
	String qno = rs.getString("qno");
	String question = rs.getString("question");
	String option1 = rs.getString("option1");
	String option2 = rs.getString("option2");
	String option3 = rs.getString("option3");
	String option4 = rs.getString("option4");
	String answer = rs.getString("answer");
	
	%>
	<tr>
		<td><%= qno %>.<%= question %></td>
	</tr>
	<tr>
		<td><input type="radio" name="<%= qno %>"value="Option1"><%= option1 %></td>
	</tr>
	<tr>
		<td><input type="radio" name="<%= qno %>"value="Option2"><%= option2 %></td>
	</tr>
	<tr>
		<td><input type="radio" name="<%= qno %>"value="Option3"><%= option3 %></td>
	</tr>
	<tr>
		<td><input type="radio" name="<%= qno %>"value="Option4"><%= option4 %></td>
	</tr>
	
	<%
	}
	con.close();
	%>
	<tr>
		<td><input type="submit" value="Submit Test"/></td>
	</tr>
	  </table>
	  <input type="hidden" name="total" value="<%= total%>"/>
	  </form>
	  <br/>
	 </div>
	  <div id="footer">
	   &copy;copy right 2019
	  </div>
	</div>
	
	</body>
</html>