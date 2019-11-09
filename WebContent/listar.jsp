<%-- 
    Document   : index
    Created on : 05/11/2019, 10:14:32
    Author     : Vitor Gomes Pereira
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dao.AlunoDAO"%>
<%@page import="model.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%
	
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Listar Alunos</title>
</head>
<body>
	<div class="container">
		<h1 class="center">
			Lista de Alunos <i class="medium material-icons">assignment</i>
		</h1>



		<table class="striped centered responsive-table">

			<thead>
				<tr>
					<th>Nome</th>
					<th>Sobrenome</th>
					<th>Periodo</th>
					<th>RA</th>
					<th>Ações</th>
				</tr>
			</thead>

			<tbody>
			
			<%
			AlunoDAO dao = new AlunoDAO();

			ArrayList<Aluno> lista = dao.listar();
			
			for(Aluno a : lista){
			%>
			<tr>
					<td><%= a.getNome() %></td>
					<td><%= a.getSobrenome() %></td>
					<td><%= a.getPeriodo() %></td>
					<td><%= a.getRa() %></td>
					<td><a href="alterarAluno?id_aluno=<%= a.getIdAluno() %>">
					<i class="small material-icons">border_color</i></a>
					
					<a href="deletarAluno?id_aluno=<%= a.getIdAluno() %>">
					<i class="small material-icons red-text">delete_forever</i></a></td>	
						
			</tr>
			<%
			}
			%>
			
			</tbody>

		</table>


	</div>

	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>