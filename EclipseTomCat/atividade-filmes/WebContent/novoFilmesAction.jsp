<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Novo Filme</title>
<script src="https://kit.fontawesome.com/939df34509.js" crossorigin="anonymous"> </script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-quantum">
		<a class="navbar-brand" href="#">Filmes</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="inicio">Início

				</a></li>
				<li class="nav-item"><a class="nav-link" href="filme?action=listFilmes">Lista de
						Filmes<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item">
					<a class="nav-link disabled"><b>Novo Filme</b></a>
				</li>
			</ul>
		</div>
	</nav>
	<main>
		<div class="jumbotron over-hid">
			<h1>Adicionar novo Filme</h1>
		</div>

		<div style="width:70%; margin: 5px auto;">
			<form action="filme?action=listFilmes" method="post">
				<div class="form-group">
					<label for="titulo">Titulo</label>
					<input type="text" name="titulo" class="form-control" placeholder="Insira o titulo do filme">
				</div>
				<div class="form-group">
					<label for="genero">Gênero</label>
					<input type="text" name="genero" class="form-control" placeholder="Insira o gênero do filme">
				</div>
					<label>Descrição</label>
				<div>
					<textarea rows="4" cols="130" id="descricao" name="descricao"></textarea>
				</div>
					<label>Classificação Indicativa</label>
				<div class="row" style="margin: 5px auto;">
					<label for="Livre" class="cls-btn badge badge-success classificacao" id="livre-label"> Livre </label>
					<input type="radio" name="classificacao" id="Livre" value="Livre" onclick="classificacaoChecked()">
					<label for="10" class="cls-btn badge badge-info classificacao" id="10-label"> 10+ </label>
					<input type="radio" name="classificacao" id="10" value="10" onclick="classificacaoChecked()">
					<label for="12" class="cls-btn badge badge-warning btn-yellow classificacao" id="12-label"> 12+ </label>
					<input type="radio" name="classificacao" id="12" value="12" onclick="classificacaoChecked()">
					<label for="14" class="cls-btn badge badge-warning classificacao" id="14-label"> 14+ </label>
					<input type="radio" name="classificacao" id="14" value="14" onclick="classificacaoChecked()">
					<label for="16" class="cls-btn badge badge-danger classificacao" id="16-label"> 16+ </label>
					<input type="radio" name="classificacao" id="16" value="16" onclick="classificacaoChecked()">
					<label for="18" class="cls-btn badge badge-dark classificacao" id="18-label"> 18+ </label>
					<input type="radio" name="classificacao" id="18" value="18" onclick="classificacaoChecked()">
				</div>
				<div class="top-filme from-group" id="top-filme">
                    <label for="topfilme" class="badge badge-success badge-lg top-filme-label"> 
                        Top Filme <i class="far fa-star" id="star-un"></i><i class="fas fa-star" id="star-che" style="color: orange;"></i>
                    </label>
                        <input type="radio" class="topFilme" name="topfilme" id="topfilme" value="true" onclick="topFilmeChecked()">
                </div>
				<div class="from-group">
					<input type="hidden" id="acao" name="acao" value="novoFilme">
					<button type="submit" class="btn-submit">Enviar</button>
				</div>
			</form>
		
		</div>
	</main>

	<script src="js/jquery.js" type="text/javascript"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
	<script src="js/script.js" type="text/javascript"></script>
	<script type="text/javascript">$("#star-che").hide();</script>

</body>
</html>