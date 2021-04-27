/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Cart;

import DAO.CartDAO;
import Model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class ListCart extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListCart at " + request.getContextPath() + "</h1>");
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
//       String username = "anh";
        Cookie[] list1 = request.getCookies();
        String username = "";
        String s ="";
        if (list1.length != 0) {
            for (int i = 0; i < list1.length; i++) {
                if (list1[i].getName().equals("user")) {
                    username = list1[i].getValue();
               
                }
            }
        }
        if (username.equals("")) {
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        } else {
            String mes ="chuỗi dông"+ username;
            CartDAO dao = new CartDAO();
            List<Cart> listCart = dao.getData();
            List<Cart> list = dao.getListByUser(listCart, username);
            int size = list.size();
            request.setAttribute("size", size);
            request.setAttribute("list", list);
            request.setAttribute("mes", mes);
            
            request.getRequestDispatcher("giohang.jsp").forward(request, response);
        }
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
        String username = request.getParameter("username");
        CartDAO dao = new CartDAO();
        List<Cart> listCart = dao.getData();
        List<Cart> list = dao.getListByUser(listCart, username);
        request.setAttribute("list", list);
        request.getRequestDispatcher("giohang.jsp").forward(request, response);

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
