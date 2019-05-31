<%@page import="java.sql.*"%>

<%
	String qno= request.getParameter("qno");
	String question = request.getParameter("question");
	String option1 = request.getParameter("option1");
	String option2 = request.getParameter("option2");
	String option3 = request.getParameter("option3");
	String option4 = request.getParameter("option4");
	String answer = request.getParameter("answer");
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st =con.createStatement();
	String sql ="delete from questions where qno='"+qno+"'";
	int count =st.executeUpdate(sql);
	if(count>0)
	{
		response.sendRedirect("extract-question.jsp");
	}
	else
	{
		out.println("Try again");
	}
	con.close();
	
	
	
	
	
	
	
	
	
%>
