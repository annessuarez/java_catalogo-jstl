<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle}"/></title>
    <style>
        body { font-family: system-ui, sans-serif; margin: 0; color: #333; }
        header, footer { padding: 1rem; background: #f5f5f5; }
        nav a { margin-right: 1rem; color: inherit; text-decoration: none; }
        main { max-width: 800px; margin: 2rem auto; padding: 0 1rem; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 8px; border-bottom: 1px solid #ddd; text-align: left; }
    </style>
</head>
<body>
<header>
    <nav>
        <c:url var="homeUrl" value="/index.jsp"/>
        <c:url var="cursosUrl" value="/cursos"/>
        <a href="${homeUrl}">Inicio</a>
        <a href="${cursosUrl}">Catálogo de Cursos</a>
    </nav>
</header>
<main>