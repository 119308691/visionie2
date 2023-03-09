//References: Emerson, B. (2022) IS3312, Web Treatment Development [Source code].
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
import model.treatment;
import service.treatmentService;


public class treatmentServlet extends HttpServlet {

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
        treatmentService aServ = new treatmentService();
        String url = null;
        //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/adminHome.jsp").forward(request, response);
        //this action will retrieve all data in treatment array list from db
        if (action.equals("listTreatments")){
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
        }
         if (action.equals("listTreatments1")){
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("/viewTreatments1.jsp").forward(request, response);
        }
          if (action.equals("listTreatments2")){
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("/viewTreatments2.jsp").forward(request, response);
        }
        
       
        if (action.equals("add")){
            request.getRequestDispatcher("/treatment_1.jsp").forward(request, response);
        }
        if (action.equals("add1")){
            request.getRequestDispatcher("/treatment.jsp").forward(request, response);
        }
        if (action.equals("Delete")){
            deleteTreatment(request,response);
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
        }
        //this action will insert submitted data to db
        if (action.equals("insertTreatment")){
            insertTreatment(request,response);
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            //once completed return to specified page
            request.getRequestDispatcher("/viewTreatments1.jsp").forward(request, response);
        }
        if (action.equals("insertTreatment1")){
            insertTreatment(request,response);
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            //once completed return to specified page
            request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
        }
        
               if (action.equals("updateCompleteTreatment")){
            updateTreatment(request,response);
            ArrayList<treatment> treatments = aServ.getAllTreatments();
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
        }
        if (action.equals("edit")){
            String treatmentId = request.getParameter("id");
            if (treatmentId == null)
                request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
            else {
                long id = Long.parseLong(treatmentId);
                aServ = new treatmentService();
                treatment oldTreatment = aServ.getTreatment(id);
                request.setAttribute("oldTreatment", oldTreatment);
                request.getRequestDispatcher("/editTreatment.jsp").forward(request, response);
            }
        }
        //home page 
        else
            request.getRequestDispatcher("/viewTreatments.jsp").forward(request, response);
       
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
    
    private void insertTreatment(HttpServletRequest request, HttpServletResponse response){
          
        //setting variable values to data retrieved from user form
        String date = request.getParameter("date");
       
        String details = request.getParameter("details");
        String ppsn = request.getParameter("ppsn");
         String optician = request.getParameter("optician");
        String patient = request.getParameter("patient");
        
        
        treatment newTreatment = new treatment();
        //setting method values to variables retrieved from user form
       
        newTreatment.setDate(date);
        newTreatment.setDetails(details);
        newTreatment.setPpsn(ppsn);
        newTreatment.setOptician(optician);
         newTreatment.setPatient(patient);
     
        
        treatmentService aServ = new treatmentService();
        aServ.insertTreatment(newTreatment);
        
           
            
             
        
        
        
        
        
        
    }
     private void updateTreatment(HttpServletRequest request, HttpServletResponse response){
        
        long id = Long.parseLong(request.getParameter("id"));
       String date = request.getParameter("date");
       
        String details = request.getParameter("details");
        String ppsn = request.getParameter("ppsn");
         String optician = request.getParameter("optician");
        String patient = request.getParameter("patient");
        
        treatment newTreatment = new treatment();
        newTreatment.setId(id);
           newTreatment.setDate(date);
        newTreatment.setDetails(details);
        newTreatment.setPpsn(ppsn);
        newTreatment.setOptician(optician);
        
         newTreatment.setPatient(patient);
        treatmentService aServ = new treatmentService();
        aServ.updateTreatment(newTreatment);
        
        
        
    }
    
    private void deleteTreatment(HttpServletRequest request, HttpServletResponse response){
        
        long treatmentId = Long.parseLong(request.getParameter("id"));
        treatmentService aServ = new treatmentService();
        aServ.deleteTreatment(treatmentId);
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
