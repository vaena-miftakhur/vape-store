/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vapestore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author acer
 */
public class koneksi {
    private static Connection conn;

   public static Connection getKoneksi()throws SQLException {
        if (conn == null || conn.isClosed()) {
            try {
                String url = "jdbc:mysql://localhost:3306/db_kasir"; // sesuai nama DB kamu
                String user = "root"; // default XAMPP user
                String pass = "";     // kosong kalau belum ada password

                conn = DriverManager.getConnection(url, user, pass);
                System.out.println("✅ Koneksi ke database POS berhasil!");
            } catch (SQLException e) {
                System.out.println("❌ Koneksi gagal: " + e.getMessage());
                throw e;
            }
            
        }
        return conn;
    }
    
}
