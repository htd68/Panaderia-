/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package duy.dev;

import duy.dev.data.dao.DatabaseDao;
import duy.dev.data.dao.UserDao;
import duy.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class LoginServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("user") != null){
            response.sendRedirect("HomeServlet");
        }
        
        request.getRequestDispatcher("login.jsp").include(request, response);        
        session.removeAttribute("errors");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        User user = userDao.login(email, password);
        
        if(user == null){
            session.setAttribute("errors", "Login Errors");
            response.sendRedirect("LoginServlet");
        }else{
            session.setAttribute("user", user);
            response.sendRedirect("HomeServlet");
        }
    }

}
