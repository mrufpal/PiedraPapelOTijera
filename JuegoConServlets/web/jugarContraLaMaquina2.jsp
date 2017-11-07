<%-- 
    Document   : jugarContraLaMaquina2
    Created on : 06-nov-2017, 19:47:14
    Author     : TIC
--%>

<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String jugadorA = request.getParameter("nombreJugador");
            String jugadaA = request.getParameter("jugada");
            String jugadaB = Partida.generarJugadaAleatoria();
            String jugadorB = "HAL9000";
            Partida p = new Partida(jugadorA, jugadaA, jugadorB, jugadaB);
            String[] posiblesJugadas = {"PIEDRA", "PAPEL", "TIJERA"};
        %>
        <h1><%=p.resultado()%></h1>
        Jugador Humano: <%=jugadorA%>, jugada <b><%=jugadaA%></b>
        <br/>
        Jugador Máquina: <%=jugadorB%>, jugada <b><%=jugadaB%></b>
        
        
        <br/>
        
        <% if(p.getGanador().equals(jugadorA)) {%>
            <h2>No me creo que le hayas ganado a <%=jugadorB%></h2>
        <%}%>
        
        <br/>
        
        Las opciones son:
        
        <%for(String opcion:posiblesJugadas) { %>
            <%=opcion%>
        <%}%>
    </body>
</html>
