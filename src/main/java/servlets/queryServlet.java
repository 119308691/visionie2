//References: Emerson, B. (2022) IS3312, Web Query Development [Source code].
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
import model.query;
import service.queryService;


public class queryServlet extends HttpServlet {

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
        queryService qServ = new queryService();
        String url = null;
        //if action is nothing return to home page
        if (action == null)
            request.getRequestDispatcher("/adminHome.jsp").forward(request, response);
        //this action will retrieve all data in query array list from db
        if (action.equals("listQuerys")){
            ArrayList<query> querys = qServ.getAllQuerys();
            request.setAttribute("querys", querys);
            request.getRequestDispatcher("/viewQuerys.jsp").forward(request, response);
        }
         if (action.equals("listQuerys1")){
            ArrayList<query> querys = qServ.getAllQuerys();
            request.setAttribute("querys", querys);
            request.getRequestDispatcher("/viewQuerys_1.jsp").forward(request, response);
        }
       
        
       
        if (action.equals("add")){
            request.getRequestDispatcher("/query.jsp").forward(request, response);
        }
       
        //this action will insert submitted data to db
        if (action.equals("insertQuery")){
            insertQuery(request,response);
            ArrayList<query> querys = qServ.getAllQuerys();
            request.setAttribute("querys", querys);
            //once completed return to specified page
            request.getRequestDispatcher("/submitted_1.jsp").forward(request, response);
        }
        
        
               if (action.equals("updateCompleteQuery")){
            updateQuery(request,response);
            ArrayList<query> querys = qServ.getAllQuerys();
            request.setAttribute("querys", querys);
            request.getRequestDispatcher("/viewQuerys.jsp").forward(request, response);
        }
        if (action.equals("edit")){
            String queryId = request.getParameter("id");
            if (queryId == null)
                request.getRequestDispatcher("/viewQuerys.jsp").forward(request, response);
            else {
                long id = Long.parseLong(queryId);
                qServ = new queryService();
                query oldQuery = qServ.getQuery(id);
                request.setAttribute("oldQuery", oldQuery);
                request.getRequestDispatcher("/editQuery.jsp").forward(request, response);
            }
        }
          if (action.equals("edit1")){
            String queryId = request.getParameter("id");
            if (queryId == null)
                request.getRequestDispatcher("/viewQuerys_1.jsp").forward(request, response);
            else {
                long id = Long.parseLong(queryId);
                qServ = new queryService();
                query oldQuery = qServ.getQuery(id);
                request.setAttribute("oldQuery", oldQuery);
                request.getRequestDispatcher("/editQuery1.jsp").forward(request, response);
            }
        }
        //home page 
        else
            request.getRequestDispatcher("/viewQuerys.jsp").forward(request, response);
       
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
    
    private void insertQuery(HttpServletRequest request, HttpServletResponse response){
          
        //setting variable values to data retrieved from user form
        String PPSN = request.getParameter("PPSN");
        String subject = request.getParameter("subject");
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
         String status = request.getParameter("status");
        
        
        
        query newQuery = new query();
        //setting method values to variables retrieved from user form
       
        newQuery.setPPSN(PPSN);
        newQuery.setSubject(subject);
        newQuery.setQuestion(question);
        newQuery.setAnswer(answer);
         newQuery.setStatus(status);
       
        
        queryService qServ = new queryService();
        qServ.insertQuery(newQuery);
        
           
            
             
        
        
        
        
        
        
    }
     private void updateQuery(HttpServletRequest request, HttpServletResponse response){
        
         long id = Long.parseLong(request.getParameter("id"));
       String PPSN = request.getParameter("PPSN");
        String subject = request.getParameter("subject");
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
         String status = request.getParameter("status");
        
        
        query newQuery = new query();
        newQuery.setId(id);
     newQuery.setPPSN(PPSN);
        newQuery.setSubject(subject);
        newQuery.setQuestion(question);
        newQuery.setAnswer(answer);
         newQuery.setStatus(status);
       
        queryService qServ = new queryService();
        qServ.updateQuery(newQuery);
        
        
        
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
