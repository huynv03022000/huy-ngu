/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Model.Order;
import DAO.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class OrderServlet extends HttpServlet {

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
            OrderDAO p = new OrderDAO();
            System.out.println("aaaaaaaaaaa");
            List<Order> list = p.getData();
            
//            Order or = null;
//            List<String> name = new ArrayList<>();
//            List<Order> ListUername = new ArrayList<>();
//            for (Order o : list) {
//                name.add(o.getUsername());
//            }
//            for (String s : name) {
//                or = p.getOrderByUsername(s);
//                ListUername.add(or);
//            }
            int numPs = list.size();
            int numperPage = 8;
            int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            int start, end;
            String tpage = request.getParameter("page");
            int page;
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            int sizeList = list.size();
            List<Order> arr = p.getListByPage(list, start, end);
            //so phan tu cua 1 trang
            request.setAttribute("size", sizeList);
            
            request.setAttribute("list", arr);
            String mes = "Sơ Mi";
            request.setAttribute("Mes", mes);
            //so trang
            request.setAttribute("num", numpage);
            request.getRequestDispatcher("Manager.jsp").forward(request, response);
            /* TODO output your page here. You may use following sample code. */
        }
    }

    public static void main(String[] args) {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
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
