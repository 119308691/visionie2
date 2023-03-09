//References: Emerson, B. (2022) IS3312, Web Optician Development [Source code].
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
import model.optician;
import service.opticianService;


public class opticianServlet extends HttpServlet {

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
        opticianService aServ = new opticianService();
        String url = null;
        //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/adminHome.jsp").forward(request, response);
        //this action will retrieve all data in optician array list from db
        if (action.equals("listOpticians")){
            ArrayList<optician> opticians = aServ.getAllOpticians();
            request.setAttribute("opticians", opticians);
            request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
        }
        
       
        if (action.equals("add")){
            request.getRequestDispatcher("/optician.jsp").forward(request, response);
        }
        if (action.equals("Delete")){
            deleteOptician(request,response);
            ArrayList<optician> opticians = aServ.getAllOpticians();
            request.setAttribute("opticians", opticians);
            request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
        }
        //this action will insert submitted data to db
        if (action.equals("insertOptician")){
            insertOptician(request,response);
            ArrayList<optician> opticians = aServ.getAllOpticians();
            request.setAttribute("opticians", opticians);
            //once completed return to specified page
            request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
        }
        
               if (action.equals("updateCompleteOptician")){
            updateOptician(request,response);
            ArrayList<optician> opticians = aServ.getAllOpticians();
            request.setAttribute("opticians", opticians);
            request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
        }
        if (action.equals("edit")){
            String opticianId = request.getParameter("id");
            if (opticianId == null)
                request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
            else {
                long id = Long.parseLong(opticianId);
                aServ = new opticianService();
                optician oldOptician = aServ.getOptician(id);
                request.setAttribute("oldOptician", oldOptician);
                request.getRequestDispatcher("/editOptician.jsp").forward(request, response);
            }
        }
        //home page 
        else
            request.getRequestDispatcher("/viewOpticians.jsp").forward(request, response);
       
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
    
    private void insertOptician(HttpServletRequest request, HttpServletResponse response){
          
        //setting variable values to data retrieved from user form
        String panelNO = request.getParameter("panelNO");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
         String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
        optician newOptician = new optician();
        //setting method values to variables retrieved from user form
       
        newOptician.setPanelNO(panelNO);
        newOptician.setName(name);
        newOptician.setAddress(address);
        newOptician.setTelephone(telephone);
         newOptician.setEmail(email);
       newOptician.setPassword(password);
        
        opticianService aServ = new opticianService();
        aServ.insertOptician(newOptician);
        
           
            
             
        
        
        
        
        
        
    }
     private void updateOptician(HttpServletRequest request, HttpServletResponse response){
        
        long id = Long.parseLong(request.getParameter("id"));
       String panelNO = request.getParameter("panelNO");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
         String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        optician newOptician = new optician();
        newOptician.setId(id);
         newOptician.setPanelNO(panelNO);
        newOptician.setName(name);
        newOptician.setAddress(address);
        newOptician.setTelephone(telephone);
         newOptician.setEmail(email);
       newOptician.setPassword(password);
        opticianService aServ = new opticianService();
        aServ.updateOptician(newOptician);
        
        
        
    }
    
    private void deleteOptician(HttpServletRequest request, HttpServletResponse response){
        
        long opticianId = Long.parseLong(request.getParameter("id"));
        opticianService aServ = new opticianService();
        aServ.deleteOptician(opticianId);
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
