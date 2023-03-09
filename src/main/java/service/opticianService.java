//References: Emerson, B. (2022) IS3312, Web Optician Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.OpticianDAO;
import java.util.ArrayList;
import model.optician;


public class opticianService {
    
 
    public optician getOptician(long opticianId){
        OpticianDAO opticianDAO = new OpticianDAO();
        optician Optician = opticianDAO.getOpticianById(opticianId);
        return Optician;
    }
     //returning array list
    
    public ArrayList<optician> getAllOpticians(){
        
        
        OpticianDAO aDao = new OpticianDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<optician> opticianList = aDao.getAllOpticians();
        return opticianList;
        
    }
    
    public void insertOptician(optician newOptician){
        
        OpticianDAO aDao = new OpticianDAO();
        //inserting newOptician list to the db tables
        aDao.insertOptician(newOptician);
        return;
        
    }
    
    public void updateOptician(optician nOptician){
        OpticianDAO aDao = new OpticianDAO();
        aDao.updateOptician(nOptician);
        return;
        
    }
    
    public void deleteOptician(long opticianId){
        OpticianDAO aDao = new OpticianDAO();
        aDao.deleteOptician(opticianId);
        return;
        
    }
    
       public optician loginOptician (String panelNO, String password){
        
       OpticianDAO opticianDAO = new OpticianDAO();
        optician Optician = opticianDAO.getUserBypanelNO(panelNO);
        if (Optician.getPassword() == null) {
            return null;
        }
        if (Optician.getPassword().equals(password)){
            return Optician;
        }
        else return null;
    }
}
