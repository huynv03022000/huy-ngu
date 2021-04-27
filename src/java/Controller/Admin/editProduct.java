/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DAO.QuanBoDAO;
import DAO.ShirtProduct;
import DAO.T_shirtProduct;
import Model.QuanBo;
import Model.Shirt;
import Model.T_shirt;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class editProduct extends HttpServlet {

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
            out.println("<title>Servlet editProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editProduct at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String img = request.getParameter("image");
        int price = Integer.parseInt(request.getParameter("price"));
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String describer = request.getParameter("describer");
        String status = request.getParameter("status");
        String type = request.getParameter("type");
        ShirtProduct s = new ShirtProduct();
        boolean check = true;
        PrintWriter out = response.getWriter();
        out.println(id);
        if (type.equalsIgnoreCase("somi")) {
            String img1 = "img/ao/" + img;
            Shirt s1 = new Shirt(id, name, img1, price, size, color, describer, status);
            s.update(s1);
            String mes = "Bạn Đã Sửa sản phẩm thành công";
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("AddProduct.jsp").
                    forward(request, response);

        }
        if (type.equalsIgnoreCase("quanbo")) {
            QuanBoDAO qb = new QuanBoDAO();
            String img1 = "img/quan/" + img;
            QuanBo p = new QuanBo(id, name, img1, price, size, color, describer, status);
            qb.update(p);
            String mes = "Bạn Đã Sửa sản phẩm thành công";
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("AddProduct.jsp").
                    forward(request, response);

        }
        if (type.equalsIgnoreCase("aophong")) {
            T_shirtProduct t = new T_shirtProduct();

            String img1 = "img/ao/" + img;
            T_shirt p = new T_shirt(id, name, img1, price, size, color, describer, status);
            t.update(p);
            String mes = "Bạn Đã Sửa sản phẩm thành công";
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("AddProduct.jsp").
                    forward(request, response);

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
