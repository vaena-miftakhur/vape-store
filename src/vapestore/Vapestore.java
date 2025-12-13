/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package vapestore;

import Admin.Registrasi;

/**
 *
 * @author acer
 */
public class Vapestore {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Registrasi Registrasi = new Registrasi();
    Registrasi.setVisible(true);
    Registrasi.pack();
    Registrasi.setLocationTo(null);
    Registrasi.setDefaultCloseOpration(Registrasi.EXIT_ON_CLOSE);

    // Tutup (dispose) form login agar tidak menumpuk
    
    
    }

    private void dispose() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
