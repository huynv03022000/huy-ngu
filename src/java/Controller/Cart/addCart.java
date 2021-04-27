/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Cart;

import DAO.CartDAO;
import DAO.OrderDAO;
import Model.Bill;
import Model.Cart;
import Model.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.smartcardio.Card;

/**
 *
 * @author Admin
 */
public class addCart extends HttpServlet {

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
            out.println("<title>Servlet addCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addCart at " + request.getContextPath() + "</h1>");
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
        Cookie[] list1 = request.getCookies();
//        List<Cart> listCart = (List<Cart>) request.getParameter("listCart");
        String usernamev = "";
        if (list1.length != 0) {
            for (int i = 0; i < list1.length; i++) {
                if (list1[i].getName().equals("user")) {
                    usernamev = list1[i].getValue();
                }
            }
        }
        if (usernamev.equals("")) {
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
        
        else {
            String pid = request.getParameter("pid");
            String size = request.getParameter("size");
            int price1 = Integer.parseInt(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int price = price1 * quantity;
            String img = request.getParameter("img");
            String username = request.getParameter("username");
            String date = new SimpleDateFormat("MM-dd-yyyy").format(Calendar.getInstance().getTime());
            boolean buy = false;
            CartDAO ca = new CartDAO();
            Cart p = new Cart(pid, price, quantity, size, img, date, buy, username);
            ca.insert(p);
            
            String mes ="Add thành công";
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }

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
