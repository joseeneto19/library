<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>LIBRARY OF DREAMS - Cadastrar Livro</title>

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
            max-width: 400px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1,
        h4 {
            color: #4B0082;
            font-weight: bold;
            text-align: center;
        }

        .form-group label {
            color: #4B0082;
            font-weight: bold;
            text-align: left;
            display: block;
        }

        .form-control {
            background-color: #f2f2f2;
            color: #00008B;
            border-radius: 5px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            background-color: #6A5ACD;
            border-color: #6A5ACD;
            width: 100%;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #483D8B;
            border-color: #483D8B;
        }

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>BIBLIOTECA</h1>
        <h4 class="mb-4">Cadastrar Livro</h4>

        <form action="processaFormulario" method="post">
            <div class="form-group">
                <label for="codigoUsuario">Código do Usuário:</label>
                <input type="text" class="form-control" id="codigoUsuario" name="codigoUsuario"
                    placeholder="Código do Usuário" max="9999999" required>
            </div>

            <div class="form-group">
                <label for="codigoLivro">Código do Livro:</label>
                <input type="text" class="form-control" id="codigoLivro" name="codigoLivro"
                    placeholder="Código do Livro" required>
            </div>

            <div class="form-group">
                <label for="nomeLivro">Nome do Livro:</label>
                <input type="text" class="form-control" id="nomeLivro" name="nomeLivro"
                    placeholder="Nome do Livro" required>
            </div>

            <div class="form-group">
                <label for="telefone">Telefone</label>
                <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="(xx) xxxxx-xxxx"
                    required>
            </div>

            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>


    <!-- JavaScript (Opcional) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>