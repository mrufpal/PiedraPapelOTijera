/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.ayesa.cursoweb;

import java.util.Date;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author japar
 */
public class PartidaTest {
    
    public PartidaTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getGanador method, of class Partida.
     */
    @Test
    public void testGetGanador() {
        System.out.println("getGanador");
        Partida instance = new Partida("A","PIEDRA","B","TIJERAS");
        String expResult = "A";
        String result = instance.getGanador();
        assertEquals(expResult, result);
        
    }

    /**
     * Test of generarJugadaAleatoria method, of class Partida.
     */
    @Test
    public void testGenerarJugadaAleatoria() {
        System.out.println("generarJugadaAleatoria");
        String expResult = "";
        String result = Partida.generarJugadaAleatoria();
        assertTrue(result!=null);
        System.out.println(result);
    }

    /**
     * Test of getId method, of class Partida.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        Partida instance = new Partida();
        String expResult = "";
        String result = instance.getId();
        assertTrue(result!=null);
        System.out.println(result);
        
    }
    

    /**
     * Test of terminada method, of class Partida.
     */
    @Test
    public void testTerminada() {
        System.out.println("terminada");
        Partida instance = new Partida();
        boolean expResult = false;
        boolean result = instance.terminada();
        assertEquals(expResult, result);
        
    }

    /**
     * Test of completa method, of class Partida.
     */
    @Test
    public void testCompleta() {
        System.out.println("completa");
        Partida instance = new Partida();
        boolean expResult = false;
        boolean result = instance.completa();
        assertEquals(expResult, result);
        
    }
    
}
