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
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
        
    }
    
   
//creating new database connection
    public Connection getConnection() {


        Connection dbConnection = null;
        
        String strUrl = "jdbc:derby://localhost:1527/vision-ireland;create=true";
        try {
            dbConnection = DriverManager.getConnection(strUrl,"visionireland","visionireland");
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }

        return dbConnection;

    }

}
