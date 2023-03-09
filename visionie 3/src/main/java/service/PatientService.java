/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.PatientDAO;
import java.util.ArrayList;
import model.patient;
import utilities.IConstants;

 //Adapted from Emerson, B. (2022) IS3312, Web Patient Development [Source code].
//Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. 
public class PatientService {
    
     public patient loginPatient(String PPSN, String password){
        
       PatientDAO patientDAO = new PatientDAO();
        patient Patient = patientDAO.getUserByPPSN(PPSN);
        if (Patient.getPassword() == null) {
            return null;
        }
        if (Patient.getPassword().equals(password)){
            return Patient;
        }
        else return null;
    }
    
   
    
    
     //returning array list
    
   // public patient getPatient1(String patientPPSN){
      //  PatientDAO patientDAO = new PatientDAO();
       // patient Patient = patientDAO.getPatientByPPSN(patientPPSN);
       // return Patient;
  //  }
    
    
    public ArrayList<patient> getAllPatients(){
        
        
        PatientDAO aDao = new PatientDAO();
        //setting the array list to the initialised array list in DAO
        ArrayList<patient> patientList = aDao.getAllPatients();
        return patientList;
        
    }
    
    
    
    public void insertPatient(patient newPatient){
        
        PatientDAO aDao = new PatientDAO();
        //inserting newPatient list to the db tables
        aDao.insertPatient(newPatient);
        return;
        
    }
    
    public void updatePatient(patient nPatient){
        PatientDAO aDao = new PatientDAO();
        aDao.updatePatient(nPatient);
        return;
        
    }
    
 
    
    
}
