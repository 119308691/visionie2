//References: Emerson, B. (2022) IS3312, Web Optician Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;
//imports
import model.optician;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.opticianService;
import utilities.DBManager;


public class OpticianDAO {
    
public optician getOpticianById(long opticianId) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        String panelNO = null;
         String name = null;
        String address = null;
        String telephone = null;
        String email = null;
        String password = null;
        
        optician tempOptician = new optician();
//sql statement to select from table
        String query = String.format("SELECT * FROM OPTICIANDATA WHERE OPTICIAN_ID=%d",opticianId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                panelNO = (rs.getString(2));
                name = (rs.getString(3));
                address = (rs.getString(4));
                telephone = (rs.getString(5));
                email = (rs.getString(6));
                password = (rs.getString(7));
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
            //setting model variable values 
        tempOptician.setId(opticianId);
        tempOptician.setPanelNO(panelNO);
        tempOptician.setName(name);
        tempOptician.setAddress(address);
        tempOptician.setTelephone(telephone);
         tempOptician.setEmail(email);
        tempOptician.setPassword(password);
        return tempOptician;

    }

    
    
     
    public optician getUserBypanelNO(String panelNO) {
//creating new db manager
        DBManager dmbgr = new DBManager();
          //creating new db connection
        Connection con = dmbgr.getConnection();
        int opticianId = 0;
        String name = null;
        String address = null;
        
          String telephone = null;
        String email = null;
        String password = null;
        
        optician tempOptician = new optician();
//sql statement to select from table
        String query = "SELECT * FROM OPTICIANDATA WHERE PANEL_NO=" + "'" + panelNO + "'";
        try {
              //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                opticianId = (rs.getInt(1));
                name = (rs.getString(3));
                address = (rs.getString(4));
                telephone = (rs.getString(5));
               
                email =  (rs.getString(6));
                password = (rs.getString(7));
                
                
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
 //setting model variable values 
        tempOptician.setPanelNO(panelNO);
        tempOptician.setId(opticianId);
        tempOptician.setName(name);
        
        tempOptician.setAddress(address);
        tempOptician.setTelephone(telephone);
        tempOptician.setEmail(email);
         tempOptician.setPassword(password);
        return tempOptician;

    }
    
    
    
  
   //creating array 
    public ArrayList<optician> getAllOpticians() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int opticianId = 0;
        String panelNO = null;
        String name = null;
        
         String address = null;
          String telephone = null;
           String email = null;
           String password = null;
           
// create an ArrayList
        ArrayList<optician> opticianData = new ArrayList();
 //sql statement to select from table
        String query = "SELECT * FROM OPTICIANDATA";
        try {
            //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               opticianId = (rs.getInt(1));
               panelNO = (rs.getString(2));
                name = (rs.getString(3));
                address = (rs.getString(4));
                telephone = (rs.getString(5));
                email = (rs.getString(6));
                 password = (rs.getString(7));
                   
                    //creating new list 
                    optician tempOptician = new optician();
                     //setting model variable values 
                     
        tempOptician.setId(opticianId);
        tempOptician.setPanelNO(panelNO);
        tempOptician.setName(name);
        tempOptician.setAddress(address);
        tempOptician.setTelephone(telephone);
         tempOptician.setEmail(email);
         tempOptician.setPassword(password);
         
         //initialising array 
 opticianData.add(tempOptician);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return opticianData;

    }
    
    //method to insert values into tables
    public void insertOptician(optician newOptician){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO OPTICIANDATA(PANEL_NO,NAME,ADDRESS,TELEPHONE,EMAIL, PASSWORD) " + 
                            "VALUES('%s','%s','%s','%s','%s' ,'%s')",newOptician.getPanelNO(),newOptician.getName(),newOptician.getAddress(),newOptician.getTelephone(),newOptician.getEmail(),newOptician.getPassword());
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
    public void updateOptician(optician newOptician){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
    String sql = String.format("UPDATE OPTICIANDATA SET PANEL_NO='%s',NAME='%s',ADDRESS='%s',TELEPHONE='%s',EMAIL='%s', PASSWORD='%s', where Optician_id = %d ",newOptician.getPanelNO(),newOptician.getName(),newOptician.getAddress(),newOptician.getTelephone(),newOptician.getEmail(), newOptician.getPassword(), newOptician.getId());
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
    public void deleteOptician(long opticianId){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            //sql statement to delete from db based on id
            String sql = String.format("DELETE FROM OPTICIANDATA WHERE OPTICIAN_ID=%d",opticianId);
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
