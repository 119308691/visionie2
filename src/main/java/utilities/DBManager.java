//References: Emerson, B. (2022) “IS3312 - Database Setup,” Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].

package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBManager {

    Logger logger = Logger.getLogger(DBManager.class.getName());

public DBManager() {
        
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
        
    }
    
   
//creating new database connection
    public Connection getConnection() {


        Connection dbConnection = null;
       
        String strUrl = "jdbc:postgresql://eu-west-1.compute.amazonaws.com/heroku_d160m2263lg0dn";
        String username= "omokxamssldqtg";
        String password = "a75bb52bc1aba946d1ec95b09569cb3499b730e407d65b785bae0bac5b14ca23";
        try {
            dbConnection = DriverManager.getConnection(strUrl, username,password);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }

        return dbConnection;
    }
    }