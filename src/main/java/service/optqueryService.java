//References: Emerson, B. (2022) IS3312, Web App Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.OptQueryDAO;
import java.util.ArrayList;
import model.optquery;


public class optqueryService {
    
 
    public optquery getQuery(long optqueryId){
        OptQueryDAO optqueryDAO = new OptQueryDAO();
        optquery OptQuery = optqueryDAO.getQueryById(optqueryId);
        return OptQuery;
    }
     //returning array list
    
    public ArrayList<optquery> getAllQuerys(){
        
        
        OptQueryDAO qDao = new OptQueryDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<optquery> optqueryList = qDao.getAllQuerys();
        return optqueryList;
        
    }
    
    public void insertQuery(optquery newQuery){
        
        OptQueryDAO qDao = new OptQueryDAO();
        //inserting newQuery list to the db tables
        qDao.insertQuery(newQuery);
        return;
        
    }
    
    public void updateQuery(optquery nQuery){
        OptQueryDAO qDao = new OptQueryDAO();
        qDao.updateQuery(nQuery);
        return;
        
    }
    
    
    
    
}
