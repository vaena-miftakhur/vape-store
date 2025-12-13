/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vapestore;

/**
 *
 * @author acer
 */
public class tesKoneksi {
    public static void main(String[] args) {
        try {
            koneksi.getKoneksi();
            System.out.println("✅ Tes koneksi berhasil!");
        } catch (Exception e) {
            System.out.println("❌ Tes koneksi gagal: " + e.getMessage());
        }
    }
}
