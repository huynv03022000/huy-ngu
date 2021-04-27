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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class getProduct extends HttpServlet {

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
            out.println("<title>Servlet getProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet getProduct at " + request.getContextPath() + "</h1>");
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
        String id = request.getParameter("id");
        if (id.contains("sm")) {
            ShirtProduct p = new ShirtProduct();
            Shirt s = p.getShirtByID(id);
            if (s != null) {
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                int i = 0;
                if (status.startsWith("C")) {
                    i = 1;
                }
                if (status.startsWith("H")) {
                    i = 2;
                }
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", i);
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            } else {
                request.setAttribute("mes", "Khong co san");
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            }

        }
        if (id.contains("qb")) {
             QuanBoDAO p = new QuanBoDAO();
            QuanBo s = p.getQuanBoByID(id);
            if (s != null) {
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                int i = 0;
                if (status.startsWith("C")) {
                    i = 1;
                }
                if (status.startsWith("H")) {
                    i = 2;
                }
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", i);
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            } else {
                request.setAttribute("mes", "Khong co san");
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            }

        }
        if (id.contains("h")) {
            T_shirtProduct p = new T_shirtProduct();
            T_shirt s = p.getProductByID(id);
            if (s != null) {
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                int i = 0;
                if (status.startsWith("C")) {
                    i = 1;
                }
                if (status.startsWith("H")) {
                    i = 2;
                }
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", i);
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            } else {
                request.setAttribute("mes", "Khong co san");
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            }
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
