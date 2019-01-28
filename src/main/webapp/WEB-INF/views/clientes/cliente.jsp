<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="sistema" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sistema:template>
	<jsp:body>
		<div class=" col-md-6 col-md-offset-3">
        <c:set var="bindingResult" value="${requestScope['org.springframework.validation.BindingResult.cliente']}"/>
        
        <form action='/cliente' method="post">
            <input type="hidden" name="id" value="${cliente.id}">

            <div class="form-group">
                <label for="nome">Nome:</label>
                <input id="nome" type="text" name="nome" class="form-control" value="${cliente.nome}">
                <c:forEach items="${bindingResult.getFieldErrors('nome')}" var="error">
                    <span class="text-danger">${error.defaultMessage}</span>
                </c:forEach>
            </div>

            <div class="form-group">
                <label for="genero">CPF:</label>
                <input id="cpf" type="text" name="cpf" class="form-control" value="${cliente.cpf}">
                <c:forEach items="${bindingResult.getFieldErrors('cpf')}" var="error">
                    <span class="text-danger">${error.defaultMessage}</span>
                </c:forEach>
            </div>
	
            <button type="submit" class="btn btn-primary">Gravar</button>
        </form>
        
	</jsp:body>
</sistema:template>