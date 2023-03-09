//References: Emerson, B. (2022) IS3312, Web Application Development [Source code].
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
import model.application;
import service.applicationService;


public class applicationServlet extends HttpServlet {

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
        applicationService aServ = new applicationService();
        String url = null;
        //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        //this action will retrieve all data in application array list from db
        if (action.equals("listApplications")){
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        }
        
        if (action.equals("listApplications1")){
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/results.jsp").forward(request, response);
        }
        
           if (action.equals("listApplications2")){
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/viewApplications1.jsp").forward(request, response);
        }
        
     //   if (action.equals("listApplications2")){
          //  ArrayList<application> applications = aServ.getApplication1(PPSN);
           // request.setAttribute("applications", applications);
            //request.getRequestDispatcher("/results.jsp").forward(request, response);
      //  }
        
        
        
        
         
        if (action.equals("add")){
            request.getRequestDispatcher("/application.jsp").forward(request, response);
        }
        if (action.equals("Delete")){
            deleteApplication(request,response);
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        }
        //this action will insert submitted data to db
        if (action.equals("insertApplication")){
            insertApplication(request,response);
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            //once completed return to specified page
            request.getRequestDispatcher("/submitted.jsp").forward(request, response);
        }
        
               if (action.equals("updateCompleteApplication")){
            updateApplication(request,response);
            ArrayList<application> applications = aServ.getAllApplications();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        }
        if (action.equals("edit")){
            String applicationId = request.getParameter("id");
            if (applicationId == null)
                request.getRequestDispatcher("/Admin.jsp").forward(request, response);
            else {
                long id = Long.parseLong(applicationId);
                aServ = new applicationService();
                application oldApplication = aServ.getApplication(id);
                request.setAttribute("oldApplication", oldApplication);
                request.getRequestDispatcher("/editApplication.jsp").forward(request, response);
            }
            
            
        }
        
         if (action.equals("edit1")){
            String applicationId = request.getParameter("id");
            if (applicationId == null)
                request.getRequestDispatcher("/viewApp.jsp").forward(request, response);
            else {
                long id = Long.parseLong(applicationId);
                aServ = new applicationService();
                application oldApplication = aServ.getApplication(id);
                request.setAttribute("oldApplication", oldApplication);
                request.getRequestDispatcher("/viewApp.jsp").forward(request, response);
            }
            
            
        }
          if (action.equals("edit2")){
            String applicationId = request.getParameter("id");
            if (applicationId == null)
                request.getRequestDispatcher("/viewApp2.jsp").forward(request, response);
            else {
                long id = Long.parseLong(applicationId);
                aServ = new applicationService();
                application oldApplication = aServ.getApplication(id);
                request.setAttribute("oldApplication", oldApplication);
                request.getRequestDispatcher("/viewApp2.jsp").forward(request, response);
            }
            
            
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
    
    private void insertApplication(HttpServletRequest request, HttpServletResponse response){
          
        //setting variable values to data retrieved from user form
        String date = request.getParameter("date");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
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
        
        application newApplication = new application();
        //setting method values to variables retrieved from user form
        newApplication.setFirstName(firstName);
        newApplication.setDate(date);
        newApplication.setLastName(lastName);
        newApplication.setDOB(DOB);
        newApplication.setPPSN(PPSN);
        newApplication.setMedNo(medNo);
        newApplication.setExpiry(expiry);
        newApplication.setPhone(phone);
        newApplication.setAddress(address);
        newApplication.setExamination(examination);
        newApplication.setExamdate(examdate);
       
        newApplication.setOptician(optician);
       newApplication.setStatus(status);
        
        applicationService aServ = new applicationService();
        aServ.insertApplication(newApplication);
        
           
            
             
        
        
        
        
        
        
    }
     private void updateApplication(HttpServletRequest request, HttpServletResponse response){
        
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
        
        
        application newApplication = new application();
        newApplication.setId(id);
        newApplication.setDate(date);
        newApplication.setFirstName(fName);
      
        newApplication.setLastName(lName);
        newApplication.setDOB(DOB);
        newApplication.setPPSN(PPSN);
        newApplication.setMedNo(medNo);
        newApplication.setExpiry(expiry);
        newApplication.setPhone(phone);
        newApplication.setAddress(address);
        newApplication.setExamination(examination);
        newApplication.setExamdate(examdate);
   
        newApplication.setOptician(optician);
        newApplication.setStatus(status);
        applicationService aServ = new applicationService();
        aServ.updateApplication(newApplication);
        
        
        
    }
    
    private void deleteApplication(HttpServletRequest request, HttpServletResponse response){
        
        long applicationId = Long.parseLong(request.getParameter("id"));
        applicationService aServ = new applicationService();
        aServ.deleteApplication(applicationId);
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
