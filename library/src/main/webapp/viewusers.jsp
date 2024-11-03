<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Usuários</title>
</head>
<body>
    <%@ page import="com.library.dao.UserDao, com.library.bean.User, java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <h1>Listagem de Usuários</h1>
    
    <%
    List<User> list = UserDao.getAllUsers();
    request.setAttribute("list", list);
    %>
    
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Código do Livro</th>
            <th>Nome do Livro</th>
            <th>Celular</th>
            <th>Editar</th>
            <th>Deletar</th>
            
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.bookid}</td>
                <td>${user.bookname}</td>
                <td>${user.number}</td>
                <td><a href="editform.jsp?id=${user.getId()}">Editar</a></td>
                <td><a href="#">Deletar</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="#">Adicionar novo Usuário</a>
</body>
</html>
