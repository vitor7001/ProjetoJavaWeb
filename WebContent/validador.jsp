<%-- 
    Document   : validador
    Created on : 05/11/2019, 11:22:56
    Author     : Vitor Gomes Pereira
--%>

<%@page import="dao.AlunoDAO"%>
<%@page import="model.Aluno"%>
<%
  
    String nome = request.getParameter("nome");
    String sobrenome = request.getParameter("sobrenome");
    String curso = request.getParameter("curso");
    String periodo = request.getParameter("periodo");
    String ra = request.getParameter("ra");

    
    
    Aluno aluno = new Aluno(null, nome, sobrenome, curso, periodo, ra);
    
    AlunoDAO dao = new AlunoDAO();
    
    dao.inserirAluno(aluno);
    
%>

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
    </head>
    <body>
        <div class="container center">
           
            <h1> <% out.print(nome); %> Registrado com sucesso!
            <i class="medium material-icons">assignment</i> </h1>
            
            <br>
            <br>
            
            <a class="waves-effect waves-light btn" href="index.jsp"><i class="material-icons left">arrow_back
            </i>Retornar</a>

        </div>

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>