<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edição do Usuário</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
          crossorigin="anonymous">

    <!-- CSS Personalizado -->
    <style>
        body {
            background: linear-gradient(to bottom right, #4B0082, #87CEFA); /* Fundo roxo para azul claro */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #4B0082;
            font-weight: bold;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
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
    </style>
</head>

<body>

    <div class="container">
        <h1>Edição de Livro</h1>

        <!-- JSP Code to Get User Data -->
        <%@page import="com.library.bean.User, com.library.dao.UserDao" %>
        <%
            String id = request.getParameter("id");
            User user = UserDao.getRegistroById(Integer.parseInt(id));
        %>

        <form action="edituser.jsp" method="post">
            <input type="hidden" name="id" value="<%=user.getId()%>">
            <table>
                <tr>
                    <td>Código do Livro:</td>
                    <td><input type="number" name="bookid" value="<%=user.getBookid()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Nome do Livro:</td>
                    <td><input type="text" name="bookname" value="<%=user.getBookname()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Celular:</td>
                    <td><input type="tel" name="number" value="<%=user.getNumber()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit" class="btn-custom">Editar usuário</button>
                    </td>
                </tr>
            </table>
        </form>
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