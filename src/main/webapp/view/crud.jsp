<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER MANAGEMENT SYSTEM</title>
</head>
<body bgcolor="pink">
<font color="red"> <b><u><h1>USER MANAGEMENT SYSTEM</h1></u></b></font>
	<form action="save" method="post" style="font-size: 20px;">
<pre><b>
ID      <input type="number" name="id"
				style="border-color: cornflowerblue;" size="20px"><br>
NAME    <input type="text" name="name"
				style="border-color: cornflowerblue;" size="20px"><br>
CITY    <input type="text" name="city"
				style="border-color: cornflowerblue;" size="20px"><br>
CONTACT <input type="text" name="contact"
				style="border-color: cornflowerblue;" size="20px"><br>
			</b></pre>
			
		<input type="submit" value="Save"
			style="background-color: yellow; font-size: 25px;">

		<button type="submit" formaction="update"
			style="background-color: blue; font-size: 25px;">Update</button>

		<button type="submit" formaction="delete"
			style="background-color: red; font-size: 25px;">Delete</button>

		<input type="reset" value="Clear"
			style="background-color: green; font-size: 25px;"><br>
	</form><br>

	<br>
	<table border="5" width="1000" height="200" cellspacing="8"
		cellpadding="12" bgcolor="#ADD8E6">
		<th>ID</th>
		<th>NAME</th>
		<th>CITY</th>
		<th>CONTACT</th>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mtums", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from user");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				out.println(
				"<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(4) + "</td><td>"
						+ rs.getString(2) + "</td><td>" + rs.getString(3) + "</td></tr>");
			}
		} catch (Exception e) {
			out.println(e);
		}
		%>
	</table>
	<style>
table, th, td {
	border: 1px solid;
	align: center;
}

body {
	padding-top: 10px;
	border: 4px solid black;
	padding: 20px;
}
</style>
</body>
</html>