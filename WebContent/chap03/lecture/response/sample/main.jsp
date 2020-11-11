<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String email = request.getParameter("email");
String pw = request.getParameter("password");

boolean login = email.equals("a@a") && pw.equals("123");

boolean yoonkwan = email.equals("yoonkwan@joongang.com") && pw.equals("1986");
boolean chulsoo = email.equals("chulsoo@joongang.com") && pw.equals("1986");
boolean dongjoo = email.equals("dongjoo@joongang.com") && pw.equals("1989");

if (yoonkwan) {
	response.sendRedirect("main2.jsp" + "?" + "email="+email);
} else if (chulsoo) {
	response.sendRedirect("main2.jsp" + "?" + "email="+email);
} else if (dongjoo) {
	response.sendRedirect("main2.jsp" + "?" + "email="+email);
} else if (!yoonkwan || ! chulsoo || ! dongjoo) {
	response.sendRedirect("login.jsp?code=1");
}	
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

<jsp:include page="navbar.jsp"></jsp:include>

<div class="alert alert-primary" role="alert">
	로그인에 성공 하였습니다.
</div>


<div class="container mt-3">
<div class="jumbotron">
  <h1 class="display-4">Hello, world!</h1>
  <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
  <hr class="my-4">
  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>

</div>

</body>
</html>

