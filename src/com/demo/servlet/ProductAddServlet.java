package com.demo.servlet;

import com.demo.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductAddServlet" , urlPatterns =("/addproduct"))
public class ProductAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int product_price = Integer.parseInt(request.getParameter("product_price"));
            String product_name = request.getParameter("product_name");
            String product_image = request.getParameter("product_image");

            ProductDao pdao = new ProductDao();
            pdao.insertProduct(product_name, product_price,product_image);
            response.sendRedirect("admin");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
