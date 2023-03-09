//References: Emerson, B. (2022) IS3312, Web Patient Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package servlets;
//imports
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.patient;
import service.PatientService;


public class PatientServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // creating action to retrieve data from user side
        String action = request.getParameter("action");
        PatientService aServ = new PatientService();
        String url = null;
        //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        //this action will retrieve all data in patient array list from db
        if (action.equals("listPatients")){
            ArrayList<patient> patients = aServ.getAllPatients();
            request.setAttribute("patients", patients);
            request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        }
        
        if (action.equals("listPatients1")){
            ArrayList<patient> patients = aServ.getAllPatients();
            request.setAttribute("patients", patients);
            request.getRequestDispatcher("/results.jsp").forward(request, response);
        }
        
           if (action.equals("listPatients2")){
            ArrayList<patient> patients = aServ.getAllPatients();
            request.setAttribute("patients", patients);
            request.getRequestDispatcher("/viewPatients1.jsp").forward(request, response);
        }
        
     //   if (action.equals("listPatients2")){
          //  ArrayList<patient> patients = aServ.getPatient1(PPSN);
           // request.setAttribute("patients", patients);
            //request.getRequestDispatcher("/results.jsp").forward(request, response);
      //  }
        
        
        
        
         
        if (action.equals("add")){
            request.getRequestDispatcher("/patient.jsp").forward(request, response);
        }
       
        //this action will insert submitted data to db
        if (action.equals("insertPatient")){
            insertPatient(request,response);
            ArrayList<patient> patients = aServ.getAllPatients();
            request.setAttribute("patients", patients);
            //once completed return to specified page
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        
        
        
            
        
        
            
            
        
        //home page 
        else
            request.getRequestDispatcher("/adminHome.jsp").forward(request, response);
       
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
       
    
    }
    
    private void insertPatient(HttpServletRequest request, HttpServletResponse response){
          
        //setting variable values to data retrieved from user form
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
         String PPSN = request.getParameter("PPSN");
         String DOB = request.getParameter("DOB");
  
        
         String email = request.getParameter("email");
         String telephone = request.getParameter("telephone");
       
        String password = request.getParameter("password");
         String userType = request.getParameter("userType");
     
        
        patient newPatient = new patient();
        //setting method values to variables retrieved from user form
        newPatient.setFirstName(firstName);
 
        newPatient.setLastName(lastName);
  
        newPatient.setPPSN(PPSN);
              newPatient.setDOB(DOB);
        newPatient.setEmail(email);

        newPatient.setTelephone(telephone);
        newPatient.setPassword(password);
        newPatient.setUserType(userType);
        
        
        PatientService aServ = new PatientService();
        aServ.insertPatient(newPatient);
        
           
            
             
        
        
        
        
        
        
    }
    /*
     private void updatePatient(HttpServletRequest request, HttpServletResponse response){
        
        long id = Long.parseLong(request.getParameter("id"));
        String date = request.getParameter("date");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String DOB = request.getParameter("DOB");
        String PPSN = request.getParameter("PPSN");
        String medNo = request.getParameter("medNo");
        String expiry = request.getParameter("expiry");
        String phone = request.getParameter("phone");
         String address = request.getParameter("address");
          String examination = request.getParameter("examination");
           String examdate = request.getParameter("examdate");
            String optician = request.getParameter("optician");
            String status = request.getParameter("status");
        
        
        patient newPatient = new patient();
        newPatient.setId(id);
        newPatient.setDate(date);
        newPatient.setFirstName(fName);
      
        newPatient.setLastName(lName);
        newPatient.setDOB(DOB);
        newPatient.setPPSN(PPSN);
        newPatient.setMedNo(medNo);
        newPatient.setExpiry(expiry);
        newPatient.setPhone(phone);
        newPatient.setAddress(address);
        newPatient.setExamination(examination);
        newPatient.setExamdate(examdate);
   
        newPatient.setOptician(optician);
        newPatient.setStatus(status);
        PatientService aServ = new PatientService();
        aServ.updatePatient(newPatient);
        
        
        
    }
    
    private void deletePatient(HttpServletRequest request, HttpServletResponse response){
        
        long patientId = Long.parseLong(request.getParameter("id"));
        PatientService aServ = new PatientService();
        aServ.deletePatient(patientId);
        return;
    
    }
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
