package com.demo.servlet;

import com.demo.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserDeleteServlet" , urlPatterns =("/deleteuser"))
public class UserDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           int id = Integer.parseInt(request.getParameter("sid"));

           UserDao dao = new UserDao();
           dao.deleteUser(id);
           response.sendRedirect("admin");
    }
}
