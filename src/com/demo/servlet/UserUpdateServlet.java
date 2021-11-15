package com.demo.servlet;

import com.demo.dao.UserDao;
import com.demo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet" , urlPatterns = ("/updateuser"))
public class UserUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("user_id"));
        String username = request.getParameter("user_username");
        String password = request.getParameter("user_password");
        String email = request.getParameter("user_email");

        UserDao ud = new UserDao();
        ud.updateUser(id , username , password , email);
        response.sendRedirect("admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         int id = Integer.parseInt(request.getParameter("sid"));
         UserDao udao = new UserDao();
         User u = udao.getUserByID(id);
         request.setAttribute("us" , u);
         request.getRequestDispatcher("updateuser.jsp").forward(request,response);
    }
}
