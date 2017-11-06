/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.ayesa.cursoweb;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 *
 * @author japar
 */
public class GestorPartidas {
    private static List<Partida> comenzadas=new ArrayList<>();    
    private static List<Partida> terminadas=new ArrayList<>();

    public static String crearPartida(String jugadorA, String jugadaA){
        Partida partida=new Partida();
        partida.setJugadorA(jugadorA);
        partida.setJugadaA(jugadaA);
        comenzadas.add(partida);
        return partida.getId();
    }
    
    public static String completarPartida(String partida, String jugadorB, String jugadaB){
        Partida partidaPorID=getPartidaPorId(partida);
        partidaPorID.setJugadorB(jugadorB);
        partidaPorID.setJugadaB(jugadaB);
        if(partidaPorID.completa() && partidaPorID.terminada()){
            comenzadas.remove(partidaPorID);
            terminadas.add(partidaPorID);
        }
        return partidaPorID.getGanador();
    }
        
    
    public static List<Partida> getComenzadas() {
        return comenzadas;
    }    

    public static List<Partida> getTerminadas() {
        return terminadas;
    }

    public static Partida getPartidaPorId(String partida) {
        Partida result=null;
        for(Partida p:comenzadas)
            if(p.getId().equals(partida))
                result=p;
        if(result==null)
            for(Partida p:terminadas)
                if(p.getId().equals(partida))
                    result=p;
        return result;
    }
    
    private static List<Partida> terminadasPorUsuario(String usuario){
        return terminadas.stream()
                .filter(p -> (p.getJugadorA().equals(usuario) || p.getJugadorB().equals(usuario)))
                .collect(Collectors.toList());                
    }
    
    
    private static long ganadasPorUsuario(String usuario){
        return terminadas.stream()
                .map(p -> p.getGanador())
                .filter(p -> p.equals(usuario))                
                .count();
    }
    
    public static Set<String> jugadores(){
        Set<String> resultado=terminadas.stream().map(p->p.getJugadorA()).collect(Collectors.toSet());
        resultado.addAll(terminadas.stream().map(p->p.getJugadorB()).collect(Collectors.toSet()));
        return resultado;
    }
    
    
}
