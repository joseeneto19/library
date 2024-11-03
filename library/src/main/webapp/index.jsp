<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
          crossorigin="anonymous">

    <title>BIBLIOTECA</title>

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
            text-align: center;
        }

        h1 {
            color: #4B0082;
            font-weight: bold;
            text-align: center;
        }

        .btn-custom {
            width: 100%;
            font-weight: bold;
            margin-top: 10px;
            background-color: #6A5ACD;
            border-color: #6A5ACD;
            color: white;
        }

        .btn-custom:hover {
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
        <button class="btn btn-custom" onclick="window.location.href='adicionarLivro.html'">ADICIONAR LIVROS</button>
        <button class="btn btn-custom" onclick="window.location.href='verLivros.html'">VER LIVROS</button>
    </div>

    <!-- JavaScript (Opcional) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
            integrity="sha384-ZMP7rVo3mIyk0WLAUAd+6tM94z25e6e97l3M6C7Rr09eQ4/IGpWz+smXKp4Yf/2E" 
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
            crossorigin="anonymous"></script>
</body>

</html>