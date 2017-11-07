<%-- 
    Document   : resultado
    Created on : 07-nov-2017, 12:56:44
    Author     : Maki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String jugadorB = request.getParameter("nombreJugador");
            String jugadaB = request.getParameter("jugada");
            
            String ganador = GestorPartidas.completarPartida(id, jugadorB, jugadaB);
            
            Partida partida = GestorPartidas.getPartidaPorId(id);
            String mensajeGanador = partida.resultado();
        %>
        <h1><%=mensajeGanador%></h1>
        <hr>
        
        <%if (!ganador.isEmpty()) {%>
            Partidas ganadas por <%=ganador%>
            <%for (Partida p : GestorPartidas.getTerminadas()) {
                if(ganador.equals(p.getGanador())) { %>
                    <li>
                        <%=p.getFechaCreacion()%>: <%=p.getJugadorA()%>, <%=p.getJugadaA()%> -- <%=p.getJugadorB()%>, <%=p.getJugadaB()%>
                    </li>
                <%}
            }          
        }%>
        
        <br/>
        <br/>
        
        <button name="start" onClick="window.location='/dosJugadores.jsp'">Jugar otra vez!</button>
        
</form>


            
        
        
        
    </body>
</html>
