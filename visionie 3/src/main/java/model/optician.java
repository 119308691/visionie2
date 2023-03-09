
package model;


public class optician {
    
    
    //creating variables
    private long id;
    private String panelNO;
    private String name;
       
            private String address;
            private String telephone;
           
             private String email;
            private String password;
             
            
            
    //Method with list of paramaters 
    public optician(long id, String panelNO, String name, String address, String telephone, String email, String password ) {
        //setting values of constructors to variables
        this.id = id;
        this.panelNO = panelNO;
        this.name = name;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        this.password = password;
        
               
        
     
    }
    
    public optician() {
        
    }
        
     //getters and setter

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPanelNO() {
        return panelNO;
    }

    public void setPanelNO(String panelNO) {
        this.panelNO = panelNO;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
   
    

}