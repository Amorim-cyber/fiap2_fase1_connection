<%@   page   language="java"   contentType="text/html; charset=UTF-8"
import="br.com.bar.web.bebidas.ListaBebidas"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
Object bebidas = new ListaBebidas().findAll();
request.setAttribute("bebidas",bebidas);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap-icons-1.5.0/bootstrap-icons.css">
<title>Bar-Project</title>
</head>
<body>
	<div class="card" style="padding:10px;">
	  <div class="card-body" >
	    <select class="form-select" id="listaBebidas" aria-label="Bebidas">
		  <option selected>-</option>
		  <c:forEach var="bebida" items="${bebidas}">
		  	<option name="bebidaId" value="${bebida}">${bebida.getNome()}</option>
		  </c:forEach>
		</select>
	  </div>
	  <input style="margin-bottom:5px;" class="form-control" id="nomeBebida" type="text" placeholder="Nome Bebida" aria-label="Nome Bebida" disabled>
	  <input style="margin-bottom:5px;" class="form-control" id="tipoBebida" type="text" placeholder="Tipo de Bebida" aria-label="Tipo de Bebida" disabled>
	  <input style="margin-bottom:5px;" class="form-control" id="descricaoBebida" type="text" placeholder="Descrição da Bebida" aria-label="Descrição da Bebida" disabled>
	  <input style="margin-bottom:5px;" class="form-control" id="precoBebida" type="text" placeholder="Preço da Bebida" aria-label="Preço da Bebida" disabled>
	  
	  
	  <br>
	  <button onclick="inserirBebida()" type="button" style="width:100px; height:50px" class="btn btn-primary">Adicionar</button>
	  <br>
	  
	  
	  	<div class="card" style="padding:10px;width:50%; height:200px">
	  		<div class="card-body" style="height:100%">
	  			<div class="overflow-auto" style="height:100%">
		  			<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Bebida</th>
					      <th scope="col">Preço</th>
					      <th scope="col"></th>
					    </tr>
					  </thead>
					  <tbody id="conta">
					    
					  </tbody>
					  <tfoot id="total" style="display:none;">
					  		<tr>
					  		<th scope="col">TOTAL</th>
					  		<th  scope="col"></th>
					  		<th id="valorTotal" scope="col"></th>
					  		</tr>
					  </tfoot>
					</table>
				</div>
	  		</div>
	  	</div>
	  <br>
	  <button type="button" style="width:150px; height:50px" class="btn btn-danger">Fechar conta</button>
	  
	</div>
	<script src="./resources/js/selecionarBebida.js"></script>
	<script src="./resources/js/inserirBebida.js"></script>
	<script src="./resources/js/removerBebida.js"></script>
	<script src="./resources/js/calcularTotal.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>