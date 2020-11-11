<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="chap07.User" %>
<%

List<User> userList = new ArrayList<>();

request.setAttribute("users", userList);

userList.add(new User ("ironman", "ny", 50));
userList.add(new User ("cap", "seoul", 40));
userList.add(new User ("spider", "la", 30));
userList.add(new User ("hulk", "jeju", 20));
userList.add(new User ("thor", "asgard", 10));
userList.add(new User ("panther", "busan", 10));

%>

<jsp:forward page="subEx4.jsp"></jsp:forward>

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

</body>
</html>