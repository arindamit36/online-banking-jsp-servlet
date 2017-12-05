<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="mycolls.DAO"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Connection con=(Connection)DAO.getConnection();
	Statement st=null;
	String accno=request.getParameter("accno").toString();
	try {
		st=(Statement) con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * FROM acc_details WHERE ACCNO='"+accno+"'");
		if(rs.next()){
%>

<table align="center">
<tr>
	<td style="padding:5px;">Account No</td><td>:</td>
	<td width="350" style="padding:5px;">
		<input type="text" name="accno" id="accno" placeholder="Account No" readonly="readonly" value="<%=rs.getString("ACCNO").toString() %>" maxlength="12" required="" class="form-control" />
	</td>
</tr>
<tr>
		<td style="padding:5px;">Name</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="name" placeholder="Name" readonly="readonly" value="<%=rs.getString("NAME").toString() %>" maxlength="20" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Email</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="email" name="email" readonly="readonly" value="<%=rs.getString("EMAIL").toString() %>" placeholder="Email" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Mobile</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="mobile" readonly="readonly" value="<%=rs.getString("MOBILE").toString() %>" placeholder="Mobile" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Account Type</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="acctype" readonly="readonly" value="<%=rs.getString("ACCTYPE").toString() %>" placeholder="Account Type" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Sex</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="sex" readonly="readonly" value="<%=rs.getString("SEX").toString() %>" placeholder="Sex" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;" valign="top">Balance</td><td valign="top">:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="addr" readonly="readonly" value="<%=rs.getString("BALANCE").toString() %>" placeholder="00.00" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Amount</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="amount" placeholder="0.0" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td colspan="3" align="right" style="padding:5px;">
			<button type="submit" class="btn submit" style="width: 100%;">Submit</button>
		</td>
	</tr>
</table>
<%
		}
		
	} catch (SQLException e) {}
    %>
    
