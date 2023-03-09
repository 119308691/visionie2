
package model;


public class treatment {
    
    
    //creating variables
    private long id;
    private String date;
    private String details;
       
            private String ppsn;
            private String optician;
           
             private String patient;
     
             
            
            
    //Method with list of paramaters 
    public treatment(long id, String date, String details, String ppsn, String optician, String patient ) {
        //setting values of constructors to variables
        this.id = id;
        this.date = date;
        this.details = details;
        this.ppsn = ppsn;
        this.optician = optician;
        this.patient = patient;
       
        
               
        
     
    }
    
    public treatment() {
        
    }
        
     //getters and setter

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getPpsn() {
        return ppsn;
    }

    public void setPpsn(String ppsn) {
        this.ppsn = ppsn;
    }

    public String getOptician() {
        return optician;
    }

    public void setOptician(String optician) {
        this.optician = optician;
    }

    public String getPatient() {
        return patient;
    }

    public void setPatient(String patient) {
        this.patient = patient;
    }

    
   
    

}