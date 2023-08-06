/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.common;

import dao.UserDAO;
import dao.sendmail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author 84339
 */
public class resetPassword extends HttpServlet {

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
            String userName = request.getParameter("usename");
            String email = request.getParameter("email");
            UserDAO dao = new UserDAO();
            User checkmail = dao.checkMail(userName, email);
            if (checkmail.getUsername() != null) {
                String newPassword = sendmail.randomString(5);
                dao.changePassword(userName, newPassword);
                String subject = "You change your password ";
                String message = "<!DOCTYPE html>"
                        + "<html>"
                        + "<head>"
                        + "<title>Servlet NewServlet</title>"
                        + "</head>"
                        + "<body>"
                        + "<h1>Mat khau cua reset cua ban la: " + newPassword + "</h1>" // chuyển đổi StringBuilder thành chuỗi kết quả
                        + "</body>"
                        + "</html>";
                sendmail.send(email, subject, message,"hacviethoang162002@gmail.com",  "vgnoepvxpjnqqyrt");
                request.setAttribute("mess", "Change Successfull");
                request.getRequestDispatcher("changePassword.jsp").include(request, response);
            } else {
                request.setAttribute("mess", "username and email khong dung");
                request.getRequestDispatcher("resertpassword.jsp").include(request, response);
            }
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
        processRequest(request, response);
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
