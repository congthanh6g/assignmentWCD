package com.demo.servlet;

import com.demo.dao.ProductDao;
import com.demo.dao.UserDao;
import com.demo.model.Product;
import com.demo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet" , urlPatterns = ("/admin"))
public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         UserDao udao = new UserDao();
         List<User> list = udao.getAllUser();
         request.setAttribute("listU" , list);

         ProductDao pdao = new ProductDao();
         List<Product> list1 = pdao.getAllProduct();
         request.setAttribute("listP" ,list1);

        request.getRequestDispatcher("admin.jsp").forward(request,response);
    }
}
