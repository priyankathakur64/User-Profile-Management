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
<title>BLOG</title>
</head>
<body>
<font color="red"> <b><u><h1>Edit blog</h1></u></b></font>
	<form action="createblog" method="post" style="font-size: 20px;">
<pre><b>
ID          <input type="number" name="id"
				style="border-color: cornflowerblue;" size="20px"><br>
BLOGGERNAME <input type="text" name="bloggername"
				style="border-color: cornflowerblue;" size="20px"><br>				
HEADING     <input type="text" name="heading"
				style="border-color: cornflowerblue;" size="20px"><br>
CONTENT     <input type="text" name="content"
				style="border-color: cornflowerblue;" size="20px"><br>
DATE        <input type="text" name="date"
				style="border-color: cornflowerblue;" size="20px"><br>
			</b></pre>
			
		<input type="submit" value="Add"
			style="background-color: yellow; font-size: 25px;">

		<button type="submit" formaction="bupdate"
			style="background-color: blue; font-size: 25px;">Update</button>

		<button type="submit" formaction="bdelete"
			style="background-color: red; font-size: 25px;">Delete</button>

		<input type="reset" value="Clear"
			style="background-color: green; font-size: 25px;"><br>
	</form><br>

	<br>
	<table border="5" width="1000" height="200" cellspacing="8"
		cellpadding="12" bgcolor="#ADD8E6">
		<th>ID</th>
		<th>BLOGGERNAME</th>
		<th>CONTENT</th>
		<th>HEADING</th>
		<th>DATE</th>
		
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mtums", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from blog");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				out.println(
				"<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(2) + "</td><td>"
						+ rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td></tr>");
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
