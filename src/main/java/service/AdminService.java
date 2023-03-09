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

 //Adapted from Emerson, B. (2022) IS3312, Web Application Development [Source code].
//Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. 
public class AdminService {
    
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
    
    
    
}
