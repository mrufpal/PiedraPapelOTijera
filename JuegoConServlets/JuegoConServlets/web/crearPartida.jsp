<%-- 
    Document   : crearPartida
    Created on : 06-nov-2017, 20:28:23
    Author     : TIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <main>
            <%
            String jugadorA = request.getParameter("nombreJugador");
            String jugadaA = request.getParameter("jugada");
              
            GestorPartidas.crearPartida(jugadorA, jugadaA);
                
            request.getRequestDispatcher("/dosJugadores.jsp").forward(request, response);
            %>
            
            
        </main>
    </body>
</html>
