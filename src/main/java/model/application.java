
package model;


public class application {
    
    
    //creating variables
    private long id;
    private String firstName;
    private String lastName;
        private String DOB;
        private String PPSN;
         private String medNo;
          private String expiry;
           private String phone;
            private String address;
            private String examination;
             private String examdate;
             private String optician;
             private String date;
             private String status;
             
            
            
    //Method with list of paramaters 
    public application(long id,String date, String firstName, String lastName, String DOB, String PPSN, String medNo, String expiry, String phone, String address, String examination, String examdate, String optician, String status ) {
        //setting values of constructors to variables
        this.id = id;
        this.date = date;
        this.firstName = firstName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.PPSN = PPSN;
        this.medNo = medNo;
        this.expiry = expiry;
        this.phone = phone;
        this.address = address;
        this.examination = examination;
        this.examdate = examdate;
        this.optician = optician;
        this.status = status;
               
        
     
    }
    
    public application() {
        
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

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getPPSN() {
        return PPSN;
    }

    public void setPPSN(String PPSN) {
        this.PPSN = PPSN;
    }

    public String getMedNo() {
        return medNo;
    }

    public void setMedNo(String medNo) {
        this.medNo = medNo;
    }

    public String getExpiry() {
        return expiry;
    }

    public void setExpiry(String expiry) {
        this.expiry = expiry;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getExamination() {
        return examination;
    }

    public void setExamination(String examination) {
        this.examination = examination;
    }

    public String getExamdate() {
        return examdate;
    }

    public void setExamdate(String examdate) {
        this.examdate = examdate;
    }

    public String getOptician() {
        return optician;
    }

    public void setOptician(String optician) {
        this.optician = optician;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

}