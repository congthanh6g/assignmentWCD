package com.demo.servlet;

import com.demo.dao.ProductDao;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home1Servlet" , urlPatterns = ("/home1"))
public class Home1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao pdao = new ProductDao();
        List<Product> list = pdao.getAllProduct();

        request.setAttribute("listP" , list);
        request.getRequestDispatcher("index1.jsp").forward(request, response);
    }
}
