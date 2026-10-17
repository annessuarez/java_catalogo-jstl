<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="Inicio - Catálogo" scope="request"/>
<jsp:include page="/WEB-INF/views/header.jsp"/>

<div style="text-align: center; padding: 2rem 0;">
    <h1>Plataforma de Formación</h1>
    <p>Haz clic abajo para consultar todos los cursos disponibles en el catálogo.</p>
    
    <c:url var="catalogoUrl" value="/cursos"/>
    <p style="margin-top: 2rem;">
        <a href="${catalogoUrl}" class="btn">Ver Catálogo de Cursos</a>
    </p>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>
