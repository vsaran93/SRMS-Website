/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servletes;

import Beans.Menu;
import Beans.MenuItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchMenu extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String search = request.getParameter("searchName");
        try {
            Menu menu = new Menu();
            ArrayList<MenuItem> menuItems = new ArrayList<MenuItem>();
            menuItems = menu.searchMenu(search);
            for (int i = 0; i < menuItems.size(); i++) {
                String itemDescription = menuItems.get(i).getItemDescription();
                String itemName = menuItems.get(i).getItemName();
                String imagePath = menuItems.get(i).getItemImagePath();
                String itemPrice = menuItems.get(i).getItemPrice();
                String itemType = menuItems.get(i).getItemType();
                
                out.println("<div class=\"row\">\n" +
"                                                <div class=\"col-md-12\">\n" +
"                                                    <div class=\"col-md-3\">\n" +
"                                                        <div class=\"thumbnail\">\n" +
"                                                            <img alt=\"Bootstrap Thumbnail First\" src=\""+imagePath+"\" />\n" +
"                                                        </div>\n" +
"                                                    </div>\n" +
"                                                    <div class=\"col-md-7\">\n" +
"                                                        <div class=\"thumbnail\">\n" +
"                                                            <div class=\"caption\">\n" +
"                                                                <h3>Name : "+itemName+"</h3>\n" +
"                                                                <p>Price : "+itemPrice+"<br>\n" +
"                                                                category : "+itemType+"<br>\n" +
"                                                                Description : "+itemDescription+"</p>\n" +
"                                                                <div id=\"hearts-existing\" class=\"starrr\" data-rating='3'></div>\n" +
"                                                            </div>\n" +
"                                                        </div>\n" +
"                                                    </div>                                                    \n" +
"                                                </div>\n" +
"                                            </div>");
            }
        } catch (Exception e) {
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
