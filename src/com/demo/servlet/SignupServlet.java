package com.demo.servlet;

import com.demo.dao.UserDao;
import com.demo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignupServlet" , urlPatterns = ("/signup"))
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String repassword = request.getParameter("repassword");

        if (!password.equals(repassword))
        {
            response.sendRedirect("signup?err=1");
        }
        else
        {
            UserDao dao = new UserDao();
            User u = dao.checkAccountExist(username);
            if (u == null)
            {
                dao.Signup(username , password , email);
                response.sendRedirect("login.jsp");
            }
            else
            {
                response.sendRedirect("signup?err1=2");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }
}
