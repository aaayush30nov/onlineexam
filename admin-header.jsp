<table>
			<tr>
			<td width=100>
			<img src="elearn.jpg" width="97" height="97" style="border-radius:50px 50px 50px 50px">
			</td>
			<td width=600><h1 id="on">Online Exam </h1> </td>
			<td>
			<%
				String loginid = (String)session.getAttribute("loginid");
			%>
			<font-color="white">Welcome <%= loginid %></font>
			</td>
			</tr>
		</table>