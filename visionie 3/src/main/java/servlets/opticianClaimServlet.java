//References: Emerson, B. (2022) IS3312, Web Application Development [Source code].
// Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code].
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.opticianclaim;
import service.opticianclaimService;


public class opticianClaimServlet extends HttpServlet {

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
        opticianclaimService oServ = new opticianclaimService();
        String url = null;
         //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/index.jsp").forward(request, response);
         //this action will retrieve all data in application array list from db
        if (action.equals("listClaims")){
            ArrayList<opticianclaim> opticianclaims = oServ.getAllClaims();
            request.setAttribute("opticianclaims", opticianclaims);
            request.getRequestDispatcher("/viewClaims.jsp").forward(request, response);
        }
        if (action.equals("add")){
            request.getRequestDispatcher("/claim.jsp").forward(request, response);
        }
                if (action.equals("updateCompleteopticianclaim")){
            updateClaim(request,response);
            ArrayList<opticianclaim> opticianclaims = oServ.getAllClaims();
            request.setAttribute("opticianclaims", opticianclaims);
            request.getRequestDispatcher("/editClaim.jsp").forward(request, response);
        }
        
        
        
        
         if (action.equals("edit")){
            String opticianclaimId = request.getParameter("id");
            if (opticianclaimId == null)
                request.getRequestDispatcher("/adminHome.jsp").forward(request, response);
            else {
                long id = Long.parseLong(opticianclaimId);
                oServ = new opticianclaimService();
                opticianclaim oldopticianclaim = oServ.getClaim(id);
                request.setAttribute("oldopticianclaim", oldopticianclaim);
                request.getRequestDispatcher("/editClaim.jsp").forward(request, response);
            }
        }
        
        
        
        
        //this action will insert submitted data to db
        if (action.equals("insertClaim")){
            insertClaim(request,response);
            ArrayList<opticianclaim> opticianclaims = oServ.getAllClaims();
            request.setAttribute("opticianclaims", opticianclaims);
              //once completed return to specified page
            request.getRequestDispatcher("/submitted.jsp").forward(request, response);
        }
        
               
         //home page 
        else
            request.getRequestDispatcher("/index.jsp").forward(request, response);
       
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
    
    private void insertClaim(HttpServletRequest request, HttpServletResponse response){
        //setting variable values to data retrieved from user form
        String status = request.getParameter("status");
        String prescription = request.getParameter("prescription");
        String glassesRequired = request.getParameter("glassesRequired");
        String lenses = request.getParameter("lenses");
         String comments = request.getParameter("comments");
        String date = request.getParameter("date");
        
         String examiner = request.getParameter("examiner");
         String details = request.getParameter("details");
         
      String optician_ID = request.getParameter("opticianID");
       
   String PPSN= request.getParameter("PPSN");
         String admin_ID = request.getParameter("adminID");
        
        opticianclaim newClaim = new opticianclaim();
        //setting method values to variables retrieved from user form
        newClaim.setStatus(status);
        newClaim.setPrescription(prescription);
        newClaim.setGlassesRequired(glassesRequired);
        newClaim.setLenses(lenses);
        newClaim.setComments(comments);
        newClaim.setDate(date);
        newClaim.setExaminer(examiner);
        newClaim.setDetails(details);
        newClaim.setOpticianID(optician_ID);
       newClaim.setPPSN(PPSN);
        newClaim.setAdminID(admin_ID);
       
        
        opticianclaimService oServ = new opticianclaimService();
        oServ.insertClaim(newClaim);
        
           
            
             
        
        
        
        
        
        
    }
    private void updateClaim(HttpServletRequest request, HttpServletResponse response){
        
        long id = Long.parseLong(request.getParameter("id"));
       String status = request.getParameter("status");
        String prescription = request.getParameter("prescription");
        String glassesRequired = request.getParameter("glassesRequired");
        String lenses = request.getParameter("lenses");
         String comments = request.getParameter("comments");
        String date = request.getParameter("date");
        
         String examiner = request.getParameter("examiner");
         String details = request.getParameter("details");
         
        
        
          String optician_ID = request.getParameter("opticianID");
        
        String PPSN= request.getParameter("PPSN");
       
       
         
       String admin_ID = request.getParameter("adminID");
      
         
         
         
         
        
        
        opticianclaim newClaim = new opticianclaim();
        newClaim.setId((int) id);
        newClaim.setStatus(status);
        newClaim.setPrescription(prescription);
        newClaim.setGlassesRequired(glassesRequired);
        newClaim.setLenses(lenses);
        newClaim.setComments(comments);
        newClaim.setDate(date);
        newClaim.setExaminer(examiner);
        newClaim.setDetails(details);
        newClaim.setOpticianID(optician_ID);
     newClaim.setPPSN(PPSN);
        newClaim.setAdminID(admin_ID);
        opticianclaimService oServ = new opticianclaimService();
        oServ.updateClaim(newClaim);
        
        
        
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
