package com.demo.servlet;

import com.demo.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserAddServlet" , urlPatterns =("/adduser"))
public class UserAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String user_username = request.getParameter("user_username");
          String user_password = request.getParameter("user_password");
          String user_email = request.getParameter("user_email");

          UserDao udao = new UserDao();
          udao.insertUser(user_username, user_password , user_email);
          response.sendRedirect("admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
