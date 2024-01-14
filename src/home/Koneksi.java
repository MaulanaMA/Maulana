package home;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.DriverManager;

/**
 *
 * @author PY7
 */
public class Koneksi {
    private static java.sql.Connection Koneksi;
    
    public static java.sql.Connection getKoneksi(){
        if (Koneksi == null){
            try{
                String url = "jdbc:mysql://localhost:3306/curd_app";
                String user = "root";
                String password = "";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Koneksi = DriverManager.getConnection(url, user, password);
                System.out.println("Connection Successfully");
            }catch (Exception e){
                System.out.println("Error");
            }
        }
        return Koneksi;
    }
    
    public static void main(String args[]){
        getKoneksi();
    }
}
