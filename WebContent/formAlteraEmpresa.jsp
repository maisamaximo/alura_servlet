<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Nova Empresa</title>
</head>
<body>
	<form action="${linkServletNovaEmpresa}" method="post">
		<label>Nome Empresa:</label>
		<input type="text" name="nome" value="${empresa.nome}"/>
		
		<label>Data Abertura:</label>
		<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
		
		<input type="hidden" name="id" value="${empresa.id }" />
		
		<input type="submit"/>
	</form>
</body>
</html>