/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.mentor;

import dao.MentorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.List;
import model.Skills;

/**
 *
 * @author 84339
 */
public class UpdateCV extends HttpServlet {
   
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateCV</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCV at " + request.getContextPath () + "</h1>");
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
          MentorDAO dao = new MentorDAO();
        List<Skills> skillsList = dao.getAllSkills();
        request.setAttribute("skillsList", skillsList);
        request.getRequestDispatcher("UpdateCV.jsp").forward(request, response);
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
        long millis = System.currentTimeMillis();
        MentorDAO dao = new MentorDAO();
        String id = request.getParameter("id");
        int mentorid = Integer.parseInt(id);
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        String fullname = request.getParameter("fullname");
        String dobs = request.getParameter("dob");
        Date dob = Date.valueOf(dobs);
        String genders = request.getParameter("gender");
        int gender = Integer.parseInt(genders);
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        Date create_date = new Date(millis);

        dao.UpdateMentorAccount(mentorid, username, pass, fullname, dob, gender, email, phone, address, create_date);
        String profession = request.getParameter("profession");
        String ProIntro = request.getParameter("ProIntro");
        String SerDes = request.getParameter("SerDes");
        String achivement = request.getParameter("achivement");
        String framework = request.getParameter("framework");
        Date createDate = new Date(millis);
        dao.UpdateCV(mentorid, profession, profession, SerDes, achivement, framework, createDate);
        int skill_id = Integer.parseInt(request.getParameter("skill_id"));
        dao.updateMentorskill(skill_id,mentorid);
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
