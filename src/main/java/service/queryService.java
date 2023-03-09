//References: Emerson, B. (2022) IS3312, Web App Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.QueryDAO;
import java.util.ArrayList;
import model.query;


public class queryService {
    
 
    public query getQuery(long queryId){
        QueryDAO queryDAO = new QueryDAO();
        query Query = queryDAO.getQueryById(queryId);
        return Query;
    }
     //returning array list
    
    public ArrayList<query> getAllQuerys(){
        
        
        QueryDAO qDao = new QueryDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<query> queryList = qDao.getAllQuerys();
        return queryList;
        
    }
    
    public void insertQuery(query newQuery){
        
        QueryDAO qDao = new QueryDAO();
        //inserting newQuery list to the db tables
        qDao.insertQuery(newQuery);
        return;
        
    }
    
    public void updateQuery(query nQuery){
        QueryDAO qDao = new QueryDAO();
        qDao.updateQuery(nQuery);
        return;
        
    }
    
    
    
    
}
