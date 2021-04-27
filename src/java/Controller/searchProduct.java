/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.QuanBoDAO;
import DAO.ShirtProduct;
import DAO.T_shirtProduct;
import Model.QuanBo;
import Model.Shirt;
import Model.T_shirt;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class searchProduct extends HttpServlet {

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
            out.println("<title>Servlet searchProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet searchProduct at " + request.getContextPath() + "</h1>");
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
 response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String input = request.getParameter("search");
        PrintWriter out = response.getWriter();
        out.println(input);
        if (input.contains("sm") || input.contains("sơ mi") || input.contains("so mi")) {
            ShirtProduct p = new ShirtProduct();
            if (input.startsWith("sm")) {
           
                Shirt s = p.getShirtByID(input);             
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", status);
                request.setAttribute("list", s);
                String properties = "somi";
                request.setAttribute("properties", properties);
                 List<Shirt> list1 = p.getData();
                List<Shirt> arr = p.getListByPage(list1, 0, 8);
                //so phan tu cua 1 trang
                request.setAttribute("list", arr);
                request.getRequestDispatcher("somiDetail.jsp").forward(request, response);
            } else {
               
                request.getRequestDispatcher("somi").
                        forward(request, response);
            }
        }
        if (input.contains("qb") || input.contains("quần bò ") || input.contains("quan bo")) {
            QuanBoDAO p = new QuanBoDAO();
            if (input.startsWith("qb")) {
                QuanBo s = p.getQuanBoByID(input);
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", status);
                request.setAttribute("list", s);
                String properties = "somi";
                List<QuanBo> list1 = p.getData();
                List<QuanBo> arr = p.getListByPage(list1, 0, 8);
                //so phan tu cua 1 trang
                request.setAttribute("list", arr);
                request.setAttribute("properties", properties);
                request.getRequestDispatcher("somiDetail.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("quanBo").
                        forward(request, response);
            }
        }
        if(input.contains("ao phong")){
            request.getRequestDispatcher("aoPhong").
                        forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String input = request.getParameter("search");
        PrintWriter out = response.getWriter();
        out.println(input);
        if (input.contains("sm") || input.contains("sơ mi") || input.contains("so mi")) {
            ShirtProduct p = new ShirtProduct();
            if (input.startsWith("sm")) {
           
                Shirt s = p.getShirtByID(input);             
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", status);
                request.setAttribute("list", s);
                String properties = "somi";
                request.setAttribute("properties", properties);
                 List<Shirt> list1 = p.getData();
                List<Shirt> arr = p.getListByPage(list1, 0, 8);
                //so phan tu cua 1 trang
                request.setAttribute("list", arr);
                request.getRequestDispatcher("somiDetail.jsp").forward(request, response);
            } else {
               
                request.getRequestDispatcher("somi").
                        forward(request, response);
            }
        }
        if (input.contains("qb") || input.contains("quần bò ") || input.contains("quan bo")) {
            QuanBoDAO p = new QuanBoDAO();
            if (input.startsWith("qb")) {
                QuanBo s = p.getQuanBoByID(input);
                String pid = s.getId();
                String name = s.getName();
                String img = s.getImg();
                int price = s.getPrice();
                String color = s.getColor();
                String size = s.getSize();
                String describer = s.getDescriber();
                String status = s.getStatus();
                request.setAttribute("pid", pid);
                request.setAttribute("name", name);
                request.setAttribute("img", img);
                request.setAttribute("price", price);
                request.setAttribute("color", color);
                request.setAttribute("size", size);
                request.setAttribute("decriber", describer);
                request.setAttribute("status", status);
                request.setAttribute("list", s);
                String properties = "somi";
                List<QuanBo> list1 = p.getData();
                List<QuanBo> arr = p.getListByPage(list1, 0, 8);
                //so phan tu cua 1 trang
                request.setAttribute("list", arr);
                request.setAttribute("properties", properties);
                request.getRequestDispatcher("somiDetail.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("quanBo").
                        forward(request, response);
            }
        }
        if(input.contains("ao phong")){
            request.getRequestDispatcher("aoPhong").
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
