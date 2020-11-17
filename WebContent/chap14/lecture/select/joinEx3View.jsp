<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
String sql = "SELECT grade, salary, ename, dno, job, commission FROM employee e NATURAL JOIN salgrade s WHERE e.eno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.setInt(1, Integer.valueOf(eno));
ResultSet rs = pstmt.executeQuery();

String grade = "";
int salary = 0;
String ename = "";
int dno = 0;
String job = "";
int commission = 0;

if(rs.next()) {
	grade = rs.getString(1);
	salary = rs.getInt(2);
	ename = rs.getString(3);
	dno = rs.getInt(4);
	job = rs.getString(5);
	commission = rs.getInt(6);
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
<h1><%= eno %>사번의 급여는 <%= salary %> 만원 / 등급은 "<%= grade %>"등급 한우<b>(국내산)</b> 입니다.</h1><br />
<h1>해당하는 사원의 부서 번호 : <%= dno %> </h1>
<h1>해당하는 사원의 부서 직업 : <%= job %> </h1>
<h1>해당하는 사원의 커미션 : <%= commission %></h1>
<h1>해당하는 사원 이름 : <%= ename %></h1><br />
</body>
</html>