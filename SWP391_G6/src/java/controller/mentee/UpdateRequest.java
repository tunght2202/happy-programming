/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.mentee;

import dao.MentorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.RequestDAO;
import java.util.ArrayList;
import java.util.List;
import model.Request;
import model.RequestStatus;
import model.Skills;

/**
 *
 * @author 84339
 */
public class UpdateRequest extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String skill_id = request.getParameter("skill_id");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateRequest</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateRequest at " + skill_id + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String mentorID = request.getParameter("mentorID");
        request.setAttribute("mentorID", mentorID);
        MentorDAO dao = new MentorDAO();
        List<Skills> skillsList = dao.getAllSkills();
        request.setAttribute("skillsList", skillsList);
        List<RequestStatus> statuslist = dao.getAllStatus();
        request.setAttribute("statuslist", statuslist);
//         String menteeID = (String) request.getParameter("menteeID");
//         request.setAttribute("menteeID", menteeID);
//        RequestDAO dao1 = new RequestDAO();
//        List<Request> RequestList = dao1.getRequestByRmenteeID(menteeID);
//        request.setAttribute("RequestList", RequestList);
//        String title = (String) request.getParameter("title");
//        request.setAttribute("title", title);
//        String deadline_date = (String) request.getParameter("deadline_date");
//        request.setAttribute("deadline_date", deadline_date);
//        String deadline_hour = (String) request.getParameter("deadline_hour");
//        request.setAttribute("deadline_hour", deadline_hour);
//        String content = (String) request.getParameter("content");
//        request.setAttribute("content", content);
        request.getRequestDispatcher("UpdateRequest.jsp").forward(request, response);
        
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         MentorDAO dao = new MentorDAO();
        String menteeID = (String) request.getParameter("menteeID");
        String mentorID = (String) request.getParameter("mentorID");
        String skill_id = (String) request.getParameter("skill_id");
        String status_id = (String) request.getParameter("status_id");
        String title = (String) request.getParameter("title");
        String deadline_date = (String) request.getParameter("deadline_date");
        String deadline_hour = (String) request.getParameter("deadline_hour");
        String content = (String) request.getParameter("content");
        RequestDAO dao1 = new RequestDAO();
        dao1.UpdateRequest(menteeID, mentorID, skill_id, status_id, title, deadline_date, deadline_hour, content);
        response.sendRedirect("home.jsp");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
