//References: Emerson, B. (2022) IS3312, Web Query Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package dao;
//imports
import model.query;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.queryService;
import utilities.DBManager;


public class QueryDAO {
    
public query getQueryById(long queryId) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        String PPSN = null;
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
        
        query tempQuery = new query();
//sql statement to select from table
        String query = String.format("SELECT * FROM QUERYDATA WHERE QUERY_ID=%d",queryId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                PPSN = (rs.getString(2));
                subject = (rs.getString(3));
                question = (rs.getString(4));
                answer = (rs.getString(5));
                status = (rs.getString(6));
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
            //setting model variable values 
        tempQuery.setId(queryId);
        tempQuery.setPPSN(PPSN);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
        
        return tempQuery;

    }

    
    
    public query getQueryByPPSN(String PPSN) {
//creating new db manager
        DBManager dmbgr = new DBManager();
        //creating new db connection
        Connection con = dmbgr.getConnection();
        int id = 0;
   
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
        
        query tempQuery = new query();
//sql statement to select from table
        String query = String.format("SELECT * FROM QUERYDATA WHERE PPSN=%s",PPSN);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
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
        tempQuery.setPPSN(PPSN);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
        
        return tempQuery;

    }

    
    
    
  
   //creating array 
    public ArrayList<query> getAllQuerys() {
//creating new db manager
        DBManager dm = new DBManager();
         //creating new db connection
        Connection con = dm.getConnection();
         //setting values to null 
        int queryId = 0;
        String PPSN = null;
         String subject = null;
        String question = null;
        String answer = null;
        String status = null;
           
// create an ArrayList
        ArrayList<query> queryData = new ArrayList();
 //sql statement to select from table
        String query = "SELECT * FROM QUERYDATA";
        try {
            //execute query 
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                 //setting values to column in specified row 
               queryId = (rs.getInt(1));
               PPSN = (rs.getString(2));
                subject = (rs.getString(3));
                question = (rs.getString(4));
                answer = (rs.getString(5));
                status = (rs.getString(6));
                
                   
                    //creating new list 
                    query tempQuery = new query();
                     //setting model variable values 
                     
       tempQuery.setId(queryId);
        tempQuery.setPPSN(PPSN);
        tempQuery.setSubject(subject);
        tempQuery.setQuestion(question);
        tempQuery.setAnswer(answer);
         tempQuery.setStatus(status);
         
         //initialising array 
 queryData.add(tempQuery);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return queryData;

    }
    
    //method to insert values into tables
    public void insertQuery(query newQuery){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
             //connecting to db
            stmt = con.createStatement();
            //inserting values to table in string format
            String sql = String.format("INSERT INTO QUERYDATA(PPSN,SUBJECT,QUESTION,ANSWER,STATUS) " + 
                            "VALUES('%s','%s','%s','%s','%s' )",newQuery.getPPSN(),newQuery.getSubject(),newQuery.getQuestion(),newQuery.getAnswer(),newQuery.getStatus());
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
    public void updateQuery(query newQuery){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
    String sql = String.format("UPDATE QUERYDATA SET PPSN='%s',SUBJECT='%s',QUESTION='%s',ANSWER='%s',STATUS='%s' where Query_id=%d ",newQuery.getPPSN(),newQuery.getSubject(),newQuery.getQuestion(),newQuery.getAnswer(),newQuery.getStatus(), newQuery.getId());
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
