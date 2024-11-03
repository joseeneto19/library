<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição do Usuário</title>
</head>
<body>
	<%@page import="com.library.bean.User, com.library.dao.UserDao" %>
	
	<%
		String id = request.getParameter("id");
		User user = UserDao.getRegistroById(Integer.parseInt(id));
	%>
</body>
</html>