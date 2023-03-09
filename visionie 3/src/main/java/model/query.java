
package model;


public class query {
    
    
    //creating variables
    private long id;
 
        private String PPSN;
         private String subject;
          private String question;
           private String answer;
      
             private String status;

              //Method with list of paramaters 
    public query(long id, String PPSN, String subject, String question, String answer, String status) {
         //setting values of constructors to variables
        this.id = id;
        this.PPSN = PPSN;
        this.subject = subject;
        this.question = question;
        this.answer = answer;
        this.status = status;
    }

    public query() {
        
    }
    
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPPSN() {
        return PPSN;
    }

    public void setPPSN(String PPSN) {
        this.PPSN = PPSN;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
             
            
            
    
               
        
     
    
    
   
        
    
    

}