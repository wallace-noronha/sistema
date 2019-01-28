<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="compra_css" fragment="true" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">Sistema de cadastro de produtos</a>
			</div>


			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">


					<li><a href="/cliente">Clientes</a></li>
					<li><a href="/admin/salas">Produtos</a></li>
					<li><a href="/filme/em-cartaz">Orçamentos</a></li>																							

				</ul>
			</div>

		</div>
	</nav>

	<jsp:doBody/>
	<script type="text/javascript" src="/assets/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
</body>


</html>
