//References: Emerson, B. (2022) IS3312, Web Treatment Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;
//imports
import model.treatment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.treatmentService;
import utilities.DBManager;


public class TreatmentDAO {
    
public treatment getTreatmentById(long treatmentId) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        String date = null;
        String details = null;
        
          String ppsn = null;
        String optician = null;
        String patient = null;
        
        treatment tempTreatment = new treatment();
//sql statement to select from table
        String query = String.format("SELECT * FROM TREATMENTDATA WHERE TREATMENT_ID=%d",treatmentId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                date = (rs.getString(2));
                details = (rs.getString(3));
                ppsn = (rs.getString(4));
                optician = (rs.getString(5));
                patient = (rs.getString(6));
              
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
            //setting model variable values 
        tempTreatment.setId(treatmentId);
        tempTreatment.setDate(date);
        tempTreatment.setDetails(details);
        tempTreatment.setPpsn(ppsn);
        tempTreatment.setOptician(optician);
         tempTreatment.setPatient(patient);
        
        return tempTreatment;

    }

    
    
    
    
    
    
  
   //creating array 
    public ArrayList<treatment> getAllTreatments() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int treatmentId = 0;
          String date = null;
        String details = null;
        
          String ppsn = null;
        String optician = null;
        String patient = null;
           
// create an ArrayList
        ArrayList<treatment> treatmentData = new ArrayList();
 //sql statement to select from table
        String query = "SELECT * FROM TREATMENTDATA";
        try {
            //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               treatmentId = (rs.getInt(1));
                date = (rs.getString(2));
                details = (rs.getString(3));
                ppsn = (rs.getString(4));
                optician = (rs.getString(5));
                
                patient = (rs.getString(6));
                   
                    //creating new list 
                    treatment tempTreatment = new treatment();
                     //setting model variable values 
                     
        tempTreatment.setId(treatmentId);
       tempTreatment.setDate(date);
        tempTreatment.setDetails(details);
        tempTreatment.setPpsn(ppsn);
        tempTreatment.setOptician(optician);
        
         tempTreatment.setPatient(patient);
         
         //initialising array 
 treatmentData.add(tempTreatment);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return treatmentData;

    }
    
    //method to insert values into tables
    public void insertTreatment(treatment newTreatment){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO TREATMENTDATA(DATE,DETAILS,PPSN,OPTICIAN,PATIENT) " + 
                            "VALUES('%s','%s','%s','%s','%s' )",newTreatment.getDate(),newTreatment.getDetails(),newTreatment.getPpsn(),newTreatment.getOptician(),newTreatment.getPatient());
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
    public void updateTreatment(treatment newTreatment){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
    String sql = String.format("UPDATE TREATMENTDATA SET DATE='%s',DETAILS='%s',PPSN='%s',OPTICIAN='%s',PATIENT='%s', where Treatment_id = %d ",newTreatment.getDate(),newTreatment.getDetails(),newTreatment.getPpsn(),newTreatment.getOptician(),newTreatment.getPatient(), newTreatment.getId());
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
    
    //deleting from database 
    public void deleteTreatment(long treatmentId){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            //sql statement to delete from db based on id
            String sql = String.format("DELETE FROM TREATMENTDATA WHERE TREATMENT_ID=%d",treatmentId);
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
