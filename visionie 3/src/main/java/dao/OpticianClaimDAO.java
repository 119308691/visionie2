//References: Emerson, B. (2022) IS3312, Web Claim Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;

//imports
import model.opticianclaim;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.opticianclaimService;
import utilities.DBManager;


public class OpticianClaimDAO {
    
    //selecting claim based on claimid
    public opticianclaim getOpticianClaimById(long opticianclaimId) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        String status = null;
        String prescription = null;
        String glassesRequired = null;
        String lenses = null;
        String comments = null;
        String date = null;
        String examiner = null;
    
         String details = null;
          String opticianID = null;
           String PPSN = null;
            String adminID = null;
        
        opticianclaim tempopticianclaim = new opticianclaim();

        String query = String.format("SELECT * FROM CLAIMDATA WHERE CLAIM_ID=%d",opticianclaimId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                status = (rs.getString(2));
                prescription = (rs.getString(3));
                glassesRequired = (rs.getString(4));
                lenses = (rs.getString(5));
                comments = (rs.getString(6));
                 date = (rs.getString(7));
                  examiner = (rs.getString(8));
                  details = (rs.getString(9));
                  opticianID = (rs.getString(10));
                   PPSN = (rs.getString(11));
                    adminID = (rs.getString(12));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        tempopticianclaim.setStatus(status);
        tempopticianclaim.setPrescription(prescription);
        tempopticianclaim.setGlassesRequired(glassesRequired);
        tempopticianclaim.setLenses(lenses);
        tempopticianclaim.setComments(comments);
         tempopticianclaim.setDate(date);
        tempopticianclaim.setExaminer(examiner);
         tempopticianclaim.setDetails(details);
        tempopticianclaim.setOpticianID(opticianID);
         tempopticianclaim.setPPSN(PPSN);
        tempopticianclaim.setAdminID(adminID);
       
     
       
        return tempopticianclaim;

    }

    
    
    
    
    
    
    
    
    
    
    //creating array 
     public ArrayList<opticianclaim> getAllClaims() {
        
         //creating new db manager
        DBManager dm = new DBManager();
        //creating new db connection
        Connection con = dm.getConnection();
        //setting values to null 
        int claimId = 0;
        String status = null;
        String prescription = null;
        String glassesRequired = null;
        String lenses = null;
        String comments = null;
        String date = null;
        String examiner = null;
         String details = null;
          String opticianID = null;
         
            String adminID = null;
         
              // create an ArrayList
        ArrayList<opticianclaim> opticianclaimData = new ArrayList();
        
        //sql statement to select from table
        String query = "SELECT * FROM CLAIMDATA";
        //execute query 
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                //setting values to column in specified row 
               claimId = (rs.getInt(1));
                status = (rs.getString(2));
                prescription = (rs.getString(3));
                glassesRequired = (rs.getString(4));
                lenses = (rs.getString(5));
                 comments = (rs.getString(6));
                  date = (rs.getString(7));
                   examiner = (rs.getString(8));
                    details = (rs.getString(9));
                    opticianID = (rs.getString(10));
                  
                    adminID = (rs.getString(11));
                    //creating new list 
                    opticianclaim tempOpticianclaim = new opticianclaim();
                    //setting model variable values 
                     tempOpticianclaim.setId(claimId);
        tempOpticianclaim.setStatus(status);
        tempOpticianclaim.setPrescription(prescription);
        tempOpticianclaim.setGlassesRequired(glassesRequired);
        tempOpticianclaim.setLenses(lenses);
         tempOpticianclaim.setComments(comments);
        tempOpticianclaim.setDate(date);
        tempOpticianclaim.setExaminer(examiner);
        tempOpticianclaim.setDetails(details);
        tempOpticianclaim.setOpticianID(opticianID);
        
        //initialising array 
 opticianclaimData.add(tempOpticianclaim);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return opticianclaimData;

    }
    

    //method to insert values into tables
    public void insertClaim (opticianclaim newClaim){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        //connecting to db
            stmt = con.createStatement();
             //inserting values to table in string format
            String sql = String.format("INSERT INTO CLAIMDATA(PRESCRIPTION,GLASSES_REQUIRED,LENSES,COMMENTS,DATE,EXAMINER,DETAILS,OPTICIAN_ID,PPSN,ADMIN_ID) " + 
                            "VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')",newClaim.getPrescription(),newClaim.getGlassesRequired(),newClaim.getLenses(),newClaim.getComments(),newClaim.getDate(),newClaim.getExaminer(),newClaim.getDetails(), newClaim.getOpticianID(),newClaim.getPPSN(),newClaim.getAdminID());
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
        
         public void updateClaim(opticianclaim newClaim){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            //inserting updated values to table in string format
    String sql = String.format("UPDATE CLAIMDATA SET STATUS='%s',PRESCRIPTION='%s',GLASSES_REQUIRED='%s',LENSES='%s',COMMENTS='%s',DATE='%s',EXAMINER='%s',DETAILS='%s',OPTICIAN_ID='%s',PPSN='%s',ADMIN_ID='%s' where Claim_id = %d ",newClaim.getStatus(),newClaim.getPrescription(),newClaim.getGlassesRequired(),newClaim.getLenses(),newClaim.getComments(),newClaim.getDate(),newClaim.getExaminer(),newClaim.getDetails(),newClaim.getOpticianID(),newClaim.getPPSN(),newClaim.getAdminID(), newClaim.getId());
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
        
        
    
    
 

   


