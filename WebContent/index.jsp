<%-- 
    Document   : index
    Created on : 05/11/2019, 10:14:32
    Author     : Vitor Gomes Pereira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Inserir Alunos</title>
    </head>
    <body>
        <div class="container">
            <h1 class="center">Inserir Aluno!
            <i class="medium material-icons">account_circle</i> </h1>

            <form name="formulario_aluno" action="validador.jsp" method="post">

                <div class="input-field col s6">
                    <input id="nome" type="text" name="nome" required>
                    <label for="nome">Nome</label>
                </div>

                <div class="input-field col s6">
                    <input id="sobrenome" type="text" name="sobrenome" required>
                    <label for="sobrenome">Sobrenome</label>
                </div>

                <div class="input-field col s6">
                    <input id="curso" type="text" name="curso" required>
                    <label for="curso">Curso</label>
                </div>

                <div class="input-field col s6">
                    <input id="periodo" type="text" name="periodo" required>
                    <label for="periodo">Periodo</label>
                </div>

                <div class="input-field col s6">
                    <input id="ra" type="text" name="ra" required>
                    <label for="ra">RA</label>
                </div>

                <button class="btn waves-effect waves-light" type="submit" name="enviar">Enviar
                    <i class="material-icons right">send</i>
                </button>

            </form>
        </div>

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>