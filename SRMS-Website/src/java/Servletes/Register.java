package Servletes;

import Beans.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            User user = new User();
            
            user.setName(request.getParameter("name"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            Date birthday = new Date(1993,12,19);
            user.setBirthday(birthday);
            user.setContact_no(request.getParameter("contact_no"));
            
            if(user.register()){
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request,response);
            }
            else{
                out.println("Either username or password is incorrect!"+user.getEmail()+"  "+user.getPassword());
                out.println("<a href=\"login.jsp\">Try again...</a>");
            }
            
        }
        finally {out.close();}
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
