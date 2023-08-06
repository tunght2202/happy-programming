/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentee;

import dao.MentorDAO;
import dao.RequestDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Skills;

/**
 *
 * @author QUAN
 */
public class createRequest extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet createRequest</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet createRequest at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String mentorID = request.getParameter("mentorID");
        request.setAttribute("mentorID", mentorID);
        MentorDAO md = new MentorDAO();
        ArrayList<Skills> listS = md.getAllSkills();
        request.setAttribute("listS", listS);
        request.getRequestDispatcher("createRequest.jsp").forward(request, response);
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
        String menteeID = request.getParameter("menteeID");
        String mentorID = request.getParameter("mentorID");
        String[] skills = request.getParameterValues("skills");
        String status_id = "1";
        String title = request.getParameter("title");
        String deadline_date = request.getParameter("deadline_date");
        String deadline_hour = request.getParameter("deadline_hour");
        String content = request.getParameter("content");
        RequestDAO dao = new RequestDAO();
        dao.createRequest(menteeID, mentorID, skills, status_id, title, deadline_date, deadline_hour, content);
        response.getWriter().print("<script> alert(\"Request created successfully!\"); window.location = \"home\";</script>");
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
