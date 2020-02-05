<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/removeEmpresa" var="linkServletRemoveEmpresa"/>
<c:url value="/editaEmpresa" var="linkServletEditaEmpresa"/>

<!DOCTYPE hmtl>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Java Standard Taglib</h1>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } Cadastrada com sucesso
	</c:if>
	
    <ul>
        <c:forEach items="${empresas}" var="empresa">
            <li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}"/> </li>
            <a href="${linkServletEditaEmpresa}?id=${empresa.id}">editar</a> 
            <a href="${linkServletRemoveEmpresa}?id=${empresa.id}">remover</a>
        </c:forEach>
    </ul>
</body>
</html>