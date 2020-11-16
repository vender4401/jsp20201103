<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

class Emp {
	private String job;
	private int max;
	private int min;
	private double avg;
	private int sum;
	
	public void setjob(String ename) {
			this.job = job;
		}
	public void setMax(int max) {
			this.max = max;
		}
	public void setMin(int min) {
		this.min = min;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String getjob() {
			return this.job;
		}
	public int getMin() {
			return this.min;
		}	
	public int getMax() {
		return this.max;
	}	
	public double getAvg() {
		return this.avg;
	}	
	public int getSum() {
		return this.sum;
	}	
}
String job = request.getParameter("job");
String sql = "SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary) FROM employee WHERE job = " + "'"+job+"'";

	//1. jdbc 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. 데이터베이스 커넥션 구함
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;	
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
	con = DriverManager.getConnection(url, id, pw);

	// 3. 쿼리 실행을 위한 statement 객체 생성
	stmt = con.createStatement();
	
	// 4. 쿼리 실행
	rs = stmt.executeQuery(sql);
	
	// 5. 쿼리 실행 결과 사용	
	Emp emp = new Emp();
	
	while (rs.next()) {			
		emp.setMax(rs.getInt(1));
		emp.setMin(rs.getInt(2));
		emp.setAvg(rs.getDouble(3));
		emp.setSum(rs.getInt(4));
	}


	// 6. statement 종료
	stmt.close();

	// 7. 데이터베이스 커넥션 종료
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
<h1>최대 : <%= emp.getMax() %></h1>
<h1>최소 : <%= emp.getMin() %></h1>
<h1>합계 : <%= emp.getSum() %></h1>
<h1>평균 : <%= emp.getAvg() %></h1>

</body>
</html>