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
	
	<h1>Edição de Livro</h1>
	
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=user.getId()%>">
		<table>
			<tr>
				<td>Código do Livro: </td>
				<td><input type="number" name="bookid" value="<%=user.getBookid()%>"/></td>
			</tr>
			<tr>
				<td>Nome do Livro:: </td>
				<td><input type="text" name="bookname" value="<%=user.getBookname()%>"/></td>
			</tr>
			<tr>
				<td>Celular: </td>
				<td><input type="tel" name="number" value="<%=user.getNumber()%>"/></td>
			</tr>
			<tr>
				<td colspan="2">
				
				<input type="submit" value="Editar usuário"></input>
				
				</td>
			
			</tr>
		
		</table>
		
		
	</form>
</body>
</html>