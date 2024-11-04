<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>LIBRARY OF DREAMS - Cadastrar Livro</title>


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

        h1, h4 {
            color: #4B0082;
            font-weight: bold;
            text-align: center;
        }

        .form-group label {
            color: #4B0082;
            font-weight: bold;
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
        
		input[type="number"]::-webkit-inner-spin-button,
    	input[type="number"]::-webkit-outer-spin-button {
        -webkit-appearance: none;
        margin: 0;
   		}	

    	input[type="number"] {
        -moz-appearance: textfield; 
    	}

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }
        }

        
        .alert-success {
            display: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BIBLIOTECA</h1>
        <h4 class="mb-4">Cadastrar Livro</h4>

        <form id="formLivro" action="adduser.jsp" method="post" onsubmit="mostrarSucesso(event)">
        
			<div class="form-group">
			    <label for="codigoLivro">Código do Livro:</label>
			    <input type="number" class="form-control" id="bookid" name="bookid"
			        placeholder="Código do Livro" required>
			</div>

            <div class="form-group">
                <label for="nomeLivro">Nome do Livro:</label>
                <input type="text" class="form-control" id="bookname" name="bookname"
                       placeholder="Nome do Livro" required>
            </div>

            <div class="form-group">
                <label for="telefone">Telefone:</label>
                <input type="tel" class="form-control" id="number" name="number" placeholder="(xx) xxxxx-xxxx"
                       required>
            </div>

            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>


        <div class="alert alert-success" id="mensagemSucesso" role="alert">
            Livro salvo com sucesso!
        </div>
    </div>


    <script>
        function mostrarSucesso(event) {
            event.preventDefault(); // Impede o envio do formulário para demonstração

            // Mostra a mensagem de sucesso
            var mensagem = document.getElementById('mensagemSucesso');
            mensagem.style.display = 'block';

            // Oculta a mensagem após 3 segundos
            setTimeout(function() {
                mensagem.style.display = 'none';
                document.getElementById('formLivro').submit(); // Envia o formulário após mostrar a mensagem
            }, 3000);
        }
    </script>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</body>
</html>
