//References: Emerson, B. (2022) “IS3312 - Database Setup,” Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].

package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBManager {

    //Logger logger = Logger.getLogger(DBManager.class.getName());

public static void main(String[] args) {
     Connection conn = null;
     jdbc:postgresql:
        
        try {
             conn= DriverManager.getConnection( "jdbc:postgresql://eu-west-1.compute.amazonaws.com/heroku_d160m2263lg0dn");
        if(conn!=null)
         {
             System.out.println("connected to database successfully");
         }
     }catch(Exception e)
     {
         System.out.println("not connected to database");
         }
     }
    
   
//creating new database connection
    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    }