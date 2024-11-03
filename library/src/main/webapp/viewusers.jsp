<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Visualização de Usuários</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
          crossorigin="anonymous">

    <!-- CSS Personalizado -->
    <style>
        body {
            background: linear-gradient(to bottom right, #4B0082, #87CEFA);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #4B0082;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4B0082;
            color: white;
        }

        td {
            color: #00008B;
        }

        .btn-custom {
            background-color: #6A5ACD;
            border-color: #6A5ACD;
            color: white;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
        }

        .btn-custom:hover {
            background-color: #483D8B;
            border-color: #483D8B;
        }

        .action-links a {
            color: #4B0082;
            font-weight: bold;
            margin: 0 5px;
            text-decoration: none;
        }

        .action-links a:hover {
            color: #6A5ACD;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Listagem de Livros</h1>

        <!-- JSP Code to Import Data -->
        <%@ page import="com.library.dao.UserDao, com.library.bean.User, java.util.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
        <%
        List<User> list = UserDao.getAllUsers();
        request.setAttribute("list", list);
        %>

        <table>
            <tr>
                <th>ID</th>
                <th>Código do Livro</th>
                <th>Nome do Livro</th>
                <th>Celular</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
            <c:forEach items="${list}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.bookid}</td>
                    <td>${user.bookname}</td>
                    <td>${user.number}</td>
                    <td class="action-links"><a href="editform.jsp?id=${user.getId()}">Editar</a></td>
                    <td class="action-links"><a href="deleteuser.jsp?id=${user.getId()}" onclick="return confirm('Tem certeza de que deseja excluir este livro?');">Excluir</a></td>
                </tr>
            </c:forEach>
        </table>

        <a href="adduserform.jsp" class="btn-custom">Adicionar novo livro</a>
    </div>

    <!-- JavaScript (Opcional) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
            integrity="sha384-ZMP7rVo3mIykW2sAg8GpA0KpV0ogbM6WNyIsZ7JrR0oz8lvT4j4BChT+" 
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
            crossorigin="anonymous"></script>
</body>

</html>