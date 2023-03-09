//References: Emerson, B. (2022) IS3312, Web Query Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;
//imports
import model.optquery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.optqueryService;
import utilities.DBManager;


public class OptQueryDAO {
    
public optquery getQueryById(long optqueryId) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        String panelno = null;
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
        
        optquery tempQuery = new optquery();
//sql statement to select from table
        String optquery = String.format("SELECT * FROM OPTQUERYDATA WHERE QUERY_ID=%d",optqueryId);
        try {
            PreparedStatement stmt = con.prepareStatement(optquery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                panelno = (rs.getString(2));
                subject = (rs.getString(3));
                question = (rs.getString(4));
                answer = (rs.getString(5));
                status = (rs.getString(6));
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
            //setting model variable values 
        tempQuery.setId(optqueryId);
        tempQuery.setPanelno(panelno);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
        
        return tempQuery;

    }

    
    
    public optquery getQueryBypanelno(String panelno) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        int id = 0;
   
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
        
        optquery tempQuery = new optquery();
//sql statement to select from table
        String optquery = String.format("SELECT * FROM OPTQUERYDATA WHERE PANEL_NO=%s",panelno);
        try {
            PreparedStatement stmt = con.prepareStatement(optquery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                id = (rs.getInt(1));
               
                subject = (rs.getString(3));
                question = (rs.getString(4));
                answer = (rs.getString(5));
                status = (rs.getString(6));
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
            //setting model variable values 
        tempQuery.setId(id);
        tempQuery.setPanelno(panelno);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
        
        return tempQuery;

    }

    
    
    
  
   //creating array 
    public ArrayList<optquery> getAllQuerys() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int optqueryId = 0;
        String panelno = null;
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
           
// create an ArrayList
        ArrayList<optquery> optqueryData = new ArrayList();
 //sql statement to select from table
        String optquery = "SELECT * FROM OPTQUERYDATA";
        try {
            //execute optquery 
            PreparedStatement stmt = con.prepareStatement(optquery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               optqueryId = (rs.getInt(1));
               panelno = (rs.getString(2));
                subject = (rs.getString(3));
                question = (rs.getString(4));
                answer = (rs.getString(5));
                status = (rs.getString(6));
                
                   
                    //creating new list 
                    optquery tempQuery = new optquery();
                     //setting model variable values 
                     
       tempQuery.setId(optqueryId);
        tempQuery.setPanelno(panelno);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
         
         //initialising array 
 optqueryData.add(tempQuery);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return optqueryData;

    }
    
    //method to insert values into tables
    public void insertQuery(optquery newQuery){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO OPTQUERYDATA(PANEL_NO,SUBJECT,QUESTION,ANSWER,STATUS) " + 
                            "VALUES('%s','%s','%s','%s','%s' )",newQuery.getPanelno(),newQuery.getSubject(),newQuery.getQuestion(),newQuery.getAnswer(),newQuery.getStatus());
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
    public void updateQuery(optquery newQuery){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
    String sql = String.format("UPDATE OPTQUERYDATA SET PANEL_NO='%s',SUBJECT='%s',QUESTION='%s',ANSWER='%s',STATUS='%s' where Query_id=%d ",newQuery.getPanelno(),newQuery.getSubject(),newQuery.getQuestion(),newQuery.getAnswer(),newQuery.getStatus(), newQuery.getId());
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
