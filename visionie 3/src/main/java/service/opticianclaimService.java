//References: Emerson, B. (2022) IS3312, Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package service;

import dao.OpticianClaimDAO;
import dao.OpticianClaimDAO;
import java.util.ArrayList;

import model.opticianclaim;


public class opticianclaimService {
    
  public opticianclaim getClaim(long opticianclaimId){
        OpticianClaimDAO opticianclaimDAO = new OpticianClaimDAO();
        opticianclaim Claim = opticianclaimDAO.getOpticianClaimById(opticianclaimId);
        return Claim;
    }
    
    //returning array list
    
     public ArrayList<opticianclaim> getAllClaims(){
       
        OpticianClaimDAO oDao = new OpticianClaimDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<opticianclaim> opticianclaimList = oDao.getAllClaims();
        return opticianclaimList;
        
    }
    
    public void insertClaim(opticianclaim newClaim){
        OpticianClaimDAO oDao = new OpticianClaimDAO();
        //inserting insertClaim list to the db tables
        oDao.insertClaim(newClaim);
        return;
        
    }
    
   
    public void updateClaim(opticianclaim nClaim){
        OpticianClaimDAO oDao = new OpticianClaimDAO();
        oDao.updateClaim(nClaim);
        return;
        
    }
    
}
