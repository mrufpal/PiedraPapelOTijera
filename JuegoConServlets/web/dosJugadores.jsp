<%-- 
    Document   : listarPartidas
    Created on : 06-nov-2017, 20:21:06
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
        Partidas creadas:
        <ul>
            <%for (Partida opcion : GestorPartidas.getComenzadas()) {%>
                <li><%=opcion.getFechaCreacion()%>, <%=opcion.getJugadorA()%>
                    <a href="completarPartida.jsp?id=<%=opcion.getId()%>">
                        Completar
                    </a>
                </li>
            <%}%>
            <hr>
            <p>

                <form action="/crearPartida.jsp">
                    <label for="nombreJugador">Nombre:</label><input name="nombreJugador" required> <br/>
                    <label for="jugada">Jugada:</label><br/>
                    <input type="radio" name="jugada" value="PIEDRA" required>PIEDRA<br/>
                    <input type="radio" name="jugada" value="PAPEL">PAPEL<br/>
                    <input type="radio" name="jugada" value="TIJERAS">TIJERA<br/>
                    <br/>
                    <input type="submit" value="Jugar!">
                </form>
            </p>
        </ul>
    </body>
</html>
