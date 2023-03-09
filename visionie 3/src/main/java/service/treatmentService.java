//References: Emerson, B. (2022) IS3312, Web Treatment Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.TreatmentDAO;
import java.util.ArrayList;
import model.treatment;


public class treatmentService {
    
 
    public treatment getTreatment(long treatmentId){
        TreatmentDAO treatmentDAO = new TreatmentDAO();
        treatment Treatment = treatmentDAO.getTreatmentById(treatmentId);
        return Treatment;
    }
     //returning array list
    
    public ArrayList<treatment> getAllTreatments(){
        
        
        TreatmentDAO aDao = new TreatmentDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<treatment> treatmentList = aDao.getAllTreatments();
        return treatmentList;
        
    }
    
    public void insertTreatment(treatment newTreatment){
        
        TreatmentDAO aDao = new TreatmentDAO();
        //inserting newTreatment list to the db tables
        aDao.insertTreatment(newTreatment);
        return;
        
    }
    
    public void updateTreatment(treatment nTreatment){
        TreatmentDAO aDao = new TreatmentDAO();
        aDao.updateTreatment(nTreatment);
        return;
        
    }
    
    public void deleteTreatment(long treatmentId){
        TreatmentDAO aDao = new TreatmentDAO();
        aDao.deleteTreatment(treatmentId);
        return;
        
    }
    
 
}
