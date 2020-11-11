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
<h1>subfolder에 있는 subfile</h1>
<a href="pathEx1sub.jsp">상대 경로 : 대상의 폴더 하위 폴더나 같은 폴더내의 파일 사용가능</a>
<br />
<a href="<%= request.getContextPath()%>/chap03/form.jsp">절대 경로 : 하위나 같은 폴더내에 포함 되지 않을경우 상위 폴더나 파일을 절대 경로로 사용이 가능</a>
<br />
<a href="/myjsp99/chap03/form.jsp"> 다른 프로젝트에 있는 파일 사용</a>
</body>
</html>