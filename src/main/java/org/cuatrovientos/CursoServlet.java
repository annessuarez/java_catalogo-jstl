package org.cuatrovientos;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cursos")
public class CursoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Curso> listaCursos = List.of(
            new Curso(1, "GAP", 22, 25, "Deporte"),
            new Curso(2, "Yoga", 20, 20, "Deporte"),
            new Curso(3, "Frances", 15, 30, "Idiomas"),
            new Curso(4, "Pintura", 18, 18, "Artes"),
            new Curso(5, "Teatro", 10, 15, "Artes")
        );
                   
        request.setAttribute("cursos", listaCursos);
        request.setAttribute("pageTitle", "Catálogo de Cursos");
        
        request.getRequestDispatcher("/WEB-INF/views/catalogo.jsp").forward(request, response);
    }
}
