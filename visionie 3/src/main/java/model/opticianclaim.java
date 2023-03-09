
package model;


public class opticianclaim {
      //creating variables
    private int id;
    private String status;
    private String prescription;
        private String glassesRequired;
        private String lenses;
         private String comments;
          private String date;
           private String examiner;
            private String details;
            private String opticianID;
            private String PPSN;
             private String adminID;
           
             
             
            
            
 //Method with list of paramaters 
    public opticianclaim(int id,String status, String prescription, String glassesRequired, String lenses, String comments, String date, String examiner, String details, String opticianID, String PPSN, String adminID ) {
        //setting values of constructors to variables
        this.id = id;
        this.status = status;
        this.prescription = prescription;
        this.glassesRequired = glassesRequired;
        this.lenses = lenses;
        this.comments = comments;
        this.date = date;
        this.examiner = examiner;
        this.details = details;
        this.opticianID = opticianID;
       this.PPSN = PPSN;
        this.adminID = adminID;

               
        
     
    }
    
    public opticianclaim() {
        
    }

 

     //getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public String getGlassesRequired() {
        return glassesRequired;
    }

    public void setGlassesRequired(String glassesRequired) {
        this.glassesRequired = glassesRequired;
    }

    public String getLenses() {
        return lenses;
    }

    public void setLenses(String lenses) {
        this.lenses = lenses;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getExaminer() {
        return examiner;
    }

    public void setExaminer(String examiner) {
        this.examiner = examiner;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getOpticianID() {
        return opticianID;
    }

    public void setOpticianID(String opticianID) {
        this.opticianID = opticianID;
    }
       public String getPPSN() {
        return PPSN;
    }

    public void setPPSN(String PPSN) {
        this.PPSN = PPSN;
    }

 

    public String getAdminID() {
        return adminID;
    }

    public void setAdminID(String adminID) {
        this.adminID = adminID;
    }
        
     

   
    
    
  

    

}