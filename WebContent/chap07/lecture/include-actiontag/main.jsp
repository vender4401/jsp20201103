<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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


<a href="#"><%= request.getParameter("email") %></a>님 접속을 환영 합니다.

<%
Map<String, String> map = new HashMap<>();
map.put("abc@abc", "기본 컨텐츠 전용");
map.put("def@def", "어린이 전용");

String cur = map.get(request.getParameter("email"));



%>

<div class="container mt-3">
	<div class="jumbotron">
  <h1 class="display-4">접속을 환영 합니다.</h1>
  <p class="lead">사용할수 있는 컨텐츠를 확인하고 선택하세요.</p>
  <hr class="my-4">
  <p>VIP결제시 추가 컨텐츠가 생성 됩니다. <a href="#"> > 결제하기 </a></p>
  <a class="btn btn-primary btn-lg" href="#" role="button">더보기</a>
</div>
</div>

<div class="container mt-3">
	<jsp:include page="contents.jsp">
		<jsp:param value="<%=cur %>" name="cur"></jsp:param>
		
	</jsp:include>


</div>
</body>
</html>