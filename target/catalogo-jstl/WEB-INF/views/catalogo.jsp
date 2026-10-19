<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<h1><c:out value="${pageTitle}"/></h1>

<c:url var="normalUrl" value="/cursos"/>
<c:url var="emptyUrl" value="/cursos"><c:param name="vacio" value="true"/></c:url>

<p style="margin-bottom: 1.5rem;">
    <a href="${normalUrl}">Ver lista con cursos</a> | 
</p>

<c:choose>
    <c:when test="${empty cursos}">
        <div style="padding: 1rem; background: #fef3c7; border-left: 4px solid #f59e0b; border-radius: 4px;">
            <p style="margin: 0;">No existen cursos disponibles en este momento.</p>
        </div>
    </c:when>

    <c:otherwise>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Categoría</th>
                    <th>Inscritos / Totales</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cursos}" var="curso">
                    <tr>
                        <td><c:out value="${curso.id}"/></td>
                        <td><strong><c:out value="${curso.nombre}"/></strong></td>
                        <td><c:out value="${curso.categoria}"/></td>
                        <td><c:out value="${curso.participantes}"/> / <c:out value="${curso.plazas}"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${curso.plazasDisponibles > 0}">
                                    <span class="badge available">
                                        Disponible (<c:out value="${curso.plazasDisponibles}"/> libres)
                                    </span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge full">Agotado</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/views/footer.jsp"/>