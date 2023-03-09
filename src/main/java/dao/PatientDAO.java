 //Adapted from Emerson, B. (2022) IS3312, Web Patient Development [Source code].
//Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]
package dao;

import model.patient;
import utilities.IConstants;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.PatientService;
import utilities.DBManager;


public class PatientDAO {
    
    public patient getUserByPPSN(String PPSN) {
//creating new db manager
        DBManager dmbgr = new DBManager();
          //creating new db connection
        Connection con = dmbgr.getConnection();
        int patientId = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String DOB = null;
          String email = null;
          String telephone = null;
        String userType = null;
        
        patient tempPatient = new patient();
//sql statement to select from table
        String query = "SELECT * FROM PATIENTDATA WHERE PPSN=" + "'" + PPSN + "'";
        try {
              //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                patientId = (rs.getInt(1));
                password = (rs.getString(8));
                fName = (rs.getString(2));
                lName = (rs.getString(3));
                DOB = (rs.getString(5));
                email =  (rs.getString(6));
                telephone = (rs.getString(7));
                
                userType = (rs.getString(9));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
 //setting model variable values 
        tempPatient.setPPSN(PPSN);
        tempPatient.setId(patientId);
        tempPatient.setFirstName(fName);
        tempPatient.setLastName(lName);
        tempPatient.setPassword(password);
        tempPatient.setDOB(DOB);
        tempPatient.setEmail(email);
        tempPatient.setTelephone(telephone);
        tempPatient.setUserType(userType);
        return tempPatient;

    }
    
     
   //creating array 
    public ArrayList<patient> getAllPatients() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int patientId = 0;
       
        String firstName = null;
        String lastName = null;
      
        String PPSN = null;
          String DOB = null;
      String email = null;
        String telephone = null;
         String password = null;
          String userType = null;
           
// create an ArrayList
        ArrayList<patient> patientData = new ArrayList();
 //sql statement to select from table
        String query = "SELECT * FROM PATIENTDATA";
        try {
            //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               patientId = (rs.getInt(1));
                password = (rs.getString(8));
                firstName = (rs.getString(2));
                lastName = (rs.getString(3));
                PPSN = (rs.getString(4));
                DOB = (rs.getString(5));
                email =  (rs.getString(6));
                telephone = (rs.getString(7));
                
                userType = (rs.getString(9));
                    //creating new list 
                    patient tempPatient = new patient();
                     //setting model variable values 
                    
                    //setting model variable values 
       
        tempPatient.setId(patientId);
        tempPatient.setFirstName(firstName);
        tempPatient.setLastName(lastName);
         tempPatient.setPPSN(PPSN);
        tempPatient.setPassword(password);
        tempPatient.setDOB(DOB);
        tempPatient.setEmail(email);
        tempPatient.setTelephone(telephone);
        tempPatient.setUserType(userType);
       
         //initialising array 
 patientData.add(tempPatient);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return patientData;

    }
    
    //method to insert values into tables
    public void insertPatient(patient newPatient){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO PATIENTDATA(FNAME,LNAME,PPSN,DOB,EMAIL,TELEPHONE,PASSWORD,USERTYPE) " + 
                            "VALUES('%s','%s','%s','%s','%s','%s','%s','%s' )",newPatient.getFirstName(),newPatient.getLastName(),newPatient.getPPSN(),newPatient.getDOB(),newPatient.getEmail(),newPatient.getTelephone(),newPatient.getPassword(),newPatient.getUserType());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                //closing connection
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
    public void updatePatient(patient newPatient){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            //inserting updated values to table in string format
    String sql = String.format("UPDATE PATIENTDATA SET FNAME='%s',LNAME='%s',PPSN='%s',DOB='%s,EMAIL='%s',TELEPHONE='%s',PASSWORD='%s',USERTYPE='%s' where Patient_id = %d ",newPatient.getFirstName(),newPatient.getLastName(),newPatient.getPPSN(),newPatient.getDOB(),newPatient.getEmail(),newPatient.getTelephone(),newPatient.getPassword(),newPatient.getUserType(),newPatient.getId());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
    

}
