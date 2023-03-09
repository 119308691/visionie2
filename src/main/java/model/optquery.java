
package model;


public class optquery {
    
    
    //creating variables
    private long id;
 
        private String panelno;
         private String subject;
          private String question;
           private String answer;
      
             private String status;

              //Method with list of paramaters 
    public optquery(long id, String panelno, String subject, String question, String answer, String status) {
         //setting values of constructors to variables
        this.id = id;
        this.panelno = panelno;
        this.subject = subject;
        this.question = question;
        this.answer = answer;
        this.status = status;
    }

    public optquery() {
        
    }
    
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPanelno() {
        return panelno;
    }

    public void setPanelno(String panelno) {
        this.panelno = panelno;
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