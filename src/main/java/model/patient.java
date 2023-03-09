/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tanishadunne
 */
public class patient {
     //creating variables
    private int id;
    private String firstName;
    private String lastName;
        private String PPSN;
     
        private String DOB;
         private String email;
          private String telephone;
           private String password;
            private String userType;
            
            //Method with list of paramaters 
    public patient(int id, String firstName, String lastName, String PPSN, String DOB, String email, String telephone, String password, String userType ) {
    //setting values of constructors to variables
        this.id = id;
   
        this.firstName = firstName;
        this.lastName = lastName;
        this.PPSN = PPSN;
        this.DOB = DOB;
        this.email = email;
        this.telephone = telephone;
        this.password = password;
        this.userType = userType;
    
}
    //getters and setters
    public patient() {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPPSN() {
        return PPSN;
    }

    public void setPPSN(String PPSN) {
        this.PPSN = PPSN;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    
}
