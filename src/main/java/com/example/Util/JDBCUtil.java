package com.example.Util;
import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p2_21901015","p2_21901015","Moo1Aeyuak");
        }catch(Exception e){
            System.out.println(e);
        }
        return con;
    }
}
