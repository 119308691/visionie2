//References: Emerson, B. (2022) IS3312, Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.ApplicationDAO;
import java.util.ArrayList;
import model.application;


public class applicationService {
    
 
    public application getApplication(long applicationId){
        ApplicationDAO applicationDAO = new ApplicationDAO();
        application Application = applicationDAO.getApplicationById(applicationId);
        return Application;
    }
    
     public application getApplication1(long applicationId){
        ApplicationDAO applicationDAO = new ApplicationDAO();
        application Application = applicationDAO.getApplicationById(applicationId);
        return Application;
    }
    
    
     //returning array list
    
   // public application getApplication1(String applicationPPSN){
      //  ApplicationDAO applicationDAO = new ApplicationDAO();
       // application Application = applicationDAO.getApplicationByPPSN(applicationPPSN);
       // return Application;
  //  }
    
    
    public ArrayList<application> getAllApplications(){
        
        
        ApplicationDAO aDao = new ApplicationDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<application> applicationList = aDao.getAllApplications();
        return applicationList;
        
    }
    
    
    
    public void insertApplication(application newApplication){
        
        ApplicationDAO aDao = new ApplicationDAO();
        //inserting newApplication list to the db tables
        aDao.insertApplication(newApplication);
        return;
        
    }
    
    public void updateApplication(application nApplication){
        ApplicationDAO aDao = new ApplicationDAO();
        aDao.updateApplication(nApplication);
        return;
        
    }
    
    public void deleteApplication(long applicationId){
        ApplicationDAO aDao = new ApplicationDAO();
        aDao.deleteApplication(applicationId);
        return;
        
    }
    
    
}
