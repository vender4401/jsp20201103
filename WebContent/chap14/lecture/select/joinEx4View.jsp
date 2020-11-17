<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String salary = request.getParameter("salary");
String sql = "SELECT e.ename, e.salary, s.grade FROM employee e, salgrade s WHERE e.salary BETWEEN s.losal AND s.hisal AND e.salary = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.setInt(1, Integer.valueOf(salary));
ResultSet rs = pstmt.executeQuery();

List<String> list = new ArrayList<>();

while (rs.next()) {
	list.add(rs.getInt(2) + "의 급여를 받는 사원의 이름 : " + rs.getString(1) + " /  등급 : " + rs.getInt(3));
}





pstmt.close();
con.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<% 
for (String n : list) {
%>
<h1><li> <%= n %></li></h1>
<%
}
%>

</body>
</html>