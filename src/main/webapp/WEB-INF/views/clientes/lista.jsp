<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="sistema"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sistema:template>
	<jsp:body>
	<div class=" col-md-6 col-md-offset-3">
		<table class="table table-hover ">
			<thead>
				<tr>
					<th>Nome</th>
					<th>CPF</th>
					<th colspan="2" class="text-center">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cliente" items="${clientes}">
					<tr>
						<td>${cliente.nome}</td>
						<td>${cliente.cpf}</td>						
						<td>
							<a onclick="excluir(${cliente.id})" class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="col-md-6 col-md-offset-3">
			<a href="/cliente" class="btn btn-block btn-info">Novo</a>
		</div>
		</div>
		<script>
			function excluir(id) {
				var url = window.location.href;
				$.ajax({
					url:"/cliente" + id,
					type: 'DELETE',
					success: function (result) {
						console.log(result);

						window.location.href = url;
					}
				});
			}
		</script>
	</jsp:body>
</sistema:template>