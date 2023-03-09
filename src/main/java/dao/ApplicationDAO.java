//References: Emerson, B. (2022) IS3312, Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;
//imports
import model.application;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.applicationService;
import utilities.DBManager;


public class ApplicationDAO {
    //getting application based on applicationid
public application getApplicationById(long applicationId) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        String date = null;
         String firstName = null;
        String lastName = null;
        String DOB = null;
        String PPSN = null;
        String medNo = null;
        String expiry = null;
        String phone = null;
         String address = null;
          String examination = null;
           String examdate = null;
            String optician = null;
            String status = null;
        application tempApplication = new application();

        String query = String.format("SELECT * FROM APPLICATIONDATA WHERE APPLICATION_ID=%d",applicationId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                date = (rs.getString(2));
                firstName = (rs.getString(3));
                lastName = (rs.getString(4));
                DOB = (rs.getString(5));
                PPSN = (rs.getString(6));
                 medNo = (rs.getString(7));
                  expiry = (rs.getString(8));
                   phone = (rs.getString(9));
                    address = (rs.getString(10));
                    examination = (rs.getString(11));
                    examdate = (rs.getString(12));
                    optician = (rs.getString(13));
                    status = (rs.getString(14));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        tempApplication.setId(applicationId);
        tempApplication.setFirstName(firstName);
        tempApplication.setLastName(lastName);
        tempApplication.setDOB(DOB);
        tempApplication.setPPSN(PPSN);
         tempApplication.setMedNo(medNo);
        tempApplication.setExpiry(expiry);
        tempApplication.setAddress(address);
        tempApplication.setPhone(phone);
        tempApplication.setExamination(examination);
        tempApplication.setExamdate(examdate);
        tempApplication.setOptician(optician);
        tempApplication.setDate(date);
  
        tempApplication.setStatus(status);
        return tempApplication;

    }

    public application getApplicationByPPSN(String applicationPPSN) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int id = 0;
        String date = null;
         String firstName = null;
        String lastName = null;
        String DOB = null;
        
        String medNo = null;
        String expiry = null;
        String phone = null;
         String address = null;
          String examination = null;
           String examdate = null;
            String optician = null;
            String status = null;
        application tempApplication = new application();

        String query = String.format("SELECT * FROM APPLICATIONDATA WHERE PPSN=%s",applicationPPSN);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                id = (rs.getInt(1));
                date = (rs.getString(2));
                firstName = (rs.getString(3));
                lastName = (rs.getString(4));
                DOB = (rs.getString(5));
                
                 medNo = (rs.getString(7));
                  expiry = (rs.getString(8));
                   phone = (rs.getString(9));
                    address = (rs.getString(10));
                    examination = (rs.getString(11));
                    examdate = (rs.getString(12));
                    optician = (rs.getString(13));
                    status = (rs.getString(14));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        tempApplication.setId(id);
        tempApplication.setFirstName(firstName);
        tempApplication.setLastName(lastName);
        tempApplication.setDOB(DOB);
        tempApplication.setPPSN(applicationPPSN);
         tempApplication.setMedNo(medNo);
        tempApplication.setExpiry(expiry);
        tempApplication.setAddress(address);
        tempApplication.setPhone(phone);
        tempApplication.setExamination(examination);
        tempApplication.setExamdate(examdate);
        tempApplication.setOptician(optician);
        tempApplication.setDate(date);
  
        tempApplication.setStatus(status);
        return tempApplication;

    }

    
    
    
    
    
  
   //creating array 
    public ArrayList<application> getAllApplications() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int applicationId = 0;
        String date = null;
        String firstName = null;
        String lastName = null;
        String DOB = null;
        String PPSN = null;
        String medNo = null;
        String expiry = null;
        String phone = null;
         String address = null;
          String examination = null;
           String examdate = null;
            String optician = null;
            String status = null;
// create an ArrayList
        ArrayList<application> applicationData = new ArrayList();
 //sql statement to select from table
        String query = "SELECT * FROM APPLICATIONDATA";
        try {
            //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               applicationId = (rs.getInt(1));
               date = (rs.getString(2));
                firstName = (rs.getString(3));
                lastName = (rs.getString(4));
                DOB = (rs.getString(5));
                PPSN = (rs.getString(6));
                 medNo = (rs.getString(7));
                  expiry = (rs.getString(8));
                   phone = (rs.getString(9));
                    address = (rs.getString(10));
                    examination = (rs.getString(11));
                    examdate = (rs.getString(12));
                    optician = (rs.getString(13));
                    status = (rs.getString(14));
                    //creating new list 
                    application tempApplication = new application();
                     //setting model variable values 
                     tempApplication.setId(applicationId);
                     tempApplication.setDate(date);
        tempApplication.setFirstName(firstName);
        tempApplication.setLastName(lastName);
        tempApplication.setDOB(DOB);
        tempApplication.setPPSN(PPSN);
         tempApplication.setMedNo(medNo);
        tempApplication.setExpiry(expiry);
        tempApplication.setPhone(phone);
        tempApplication.setExamination(examination);
        tempApplication.setExamdate(examdate);
        tempApplication.setOptician(optician);
        tempApplication.setStatus(status);
         //initialising array 
 applicationData.add(tempApplication);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return applicationData;

    }
    
    //method to insert values into tables
    public void insertApplication(application newApplication){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO APPLICATIONDATA(DATE,FNAME,LNAME,DOB,PPSN,MEDNO,EXPIRY,PHONE,ADDRESS,EXAMINATION,EXAMDATE,OPTICIAN, STATUS) " + 
                            "VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' )",newApplication.getDate(),newApplication.getFirstName(),newApplication.getLastName(),newApplication.getDOB(),newApplication.getPPSN(),newApplication.getMedNo(),newApplication.getExpiry(),newApplication.getPhone(),newApplication.getAddress(),newApplication.getExamination(),newApplication.getExamdate(),newApplication.getOptician(),newApplication.getStatus());
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
    public void updateApplication(application newApplication){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            //inserting updated values to table in string format
    String sql = String.format("UPDATE APPLICATIONDATA SET DATE='%s',FNAME='%s',LNAME='%s',DOB='%s',PPSN='%s',MEDNO='%s',EXPIRY='%s',PHONE='%s',ADDRESS='%s',EXAMINATION='%s',EXAMDATE='%s',OPTICIAN='%s',STATUS='%s' where Application_id = %d ",newApplication.getDate(),newApplication.getFirstName(),newApplication.getLastName(),newApplication.getDOB(),newApplication.getPPSN(),newApplication.getMedNo(),newApplication.getExpiry(),newApplication.getPhone(),newApplication.getAddress(),newApplication.getExamination(),newApplication.getExamdate(),newApplication.getOptician(),newApplication.getStatus(), newApplication.getId());
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
    
    public void deleteApplication(long applicationId){
        //deleting applicatioon from db based on applicationid
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("DELETE FROM APPLICATIONDATA WHERE APPLICATION_ID=%d",applicationId);
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
