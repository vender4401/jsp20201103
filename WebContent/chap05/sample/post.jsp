<%@ page import="chap05.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
List<Post> list = (List<Post>) application.getAttribute("list");
if (list == null) {
	list = new ArrayList<Post>();
	application.setAttribute("list", list);
}

String title = request.getParameter("title");
String body = request.getParameter("body");

if(title != null && !title.isEmpty() && body != null && !body.isEmpty()) {
	
Post p = new Post();
p.setTitle(title);
p.setBody(body);

list.add(p);
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
<h1>방명록</h1>
<form action="#" method="post">
	제목 : <input type="text" name="title" /> <br />
	<textarea name="body" cols="30" rows="10"></textarea>
	<br />
	<input type="submit" value="등록"/>
</form>
<hr />
<%
for (int i=0; i<list.size(); i++) {	
%>
	제목 : <a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %> </a><br />
<%
}
%>

<%
for (int i=2; i <=255; i++) {
%>
	<a href="http://172.30.1.<%= i %>:8080/myjsp/chap05/lecture/sample/post.jsp"><%= i%>번</a>
	
	 
<%
}
%>

<%
for (int i=0;i<10; i++) {
%>
	<a href="http://172.30.1.30:8080/myjsp/chap05/sample/post.jsp?title=aa&body=bb">aa</a>
<%
}
%>





</body>
</html>