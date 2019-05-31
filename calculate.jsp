<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<%
	String total = request.getParameter("total");
	int count = Integer.parseInt(total);
	ArrayList al1 = new ArrayList();
	ArrayList al2 = new ArrayList();
	
	for(int i=1;i<=count;i++)
	{
		String uanswer = request.getParameter(i+"");
		al1.add(uanswer);
	}
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
	Statement st =con.createStatement();
	String sql ="select * from questions";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next())
	{
	String answer = rs.getString("answer");
	al2.add(answer);
	}
	int correct = 0;
	for(int i=0;i<count;i++)
	{
		if(al1.get(i)!=null)
		{
			if(al1.get(i).equals(al2.get(i)))
			{
				correct++;
			}
		}
	}
	
		String emailid = (String)session.getAttribute("emailid");

		String sql1 = "insert into result values('"+emailid+"','"+correct+"','"+total+"')";
		int count1 = st.executeUpdate(sql1);
		if(count1>0)
		{
		out.println("Exam Completed");
		}
		
	
	
	
	
%>