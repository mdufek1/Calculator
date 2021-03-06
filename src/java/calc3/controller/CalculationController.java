/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calc3.controller;

import calc3.model.CircleAreaService;
import calc3.model.TriangleAreaService;
import calc3.model.RectangleAreaService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mdufek1
 */
@WebServlet(name = "CalculationController3", urlPatterns = {"/calculate3"})
public class CalculationController extends HttpServlet {
private static final String RESULT_PAGE = "calc3/index.jsp";
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
            String area = null;
            /* TODO output your page here. You may use following sample code. */
            String shape = request.getParameter("shape");
            if(shape.equals("rectangle")){
                double width = Double.parseDouble(request.getParameter("width"));
                double height = Double.parseDouble(request.getParameter("height"));
                area = new RectangleAreaService().getArea(width, height);
            } else if(shape.equals("triangle")){
                double base = Double.parseDouble(request.getParameter("base"));
                double triHeight = Double.parseDouble(request.getParameter("triHeight"));
                area = new TriangleAreaService().getArea(base, triHeight);
            } else if(shape.equals("circle")){
                double radius = Double.parseDouble(request.getParameter("radius"));
                area = new CircleAreaService().getArea(radius);
            } else{
                area = "An error occured: invalid shape parameter.";
            }     

        
        request.setAttribute("area", area);
        
        // This object lets you forward both the request and response
        // objects to a destination page
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
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
