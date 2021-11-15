package com.demo.servlet;

import com.demo.dao.ProductDao;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductUpdateServlet", urlPatterns =("/updateproduct"))
public class ProductUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("product_id"));
        String product_name = request.getParameter("product_name");
        String product_price = request.getParameter("product_price");
        String product_image = request.getParameter("product_image");

        ProductDao pdao = new ProductDao();
        pdao.updateProduct(id , product_name , product_price , product_image);
        response.sendRedirect("admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         int id = Integer.parseInt(request.getParameter("ssid"));
         ProductDao pdao = new ProductDao();
         Product p = pdao.getProductByID(id);
         request.setAttribute("ps" , p);
         request.getRequestDispatcher("updateproduct.jsp").forward(request,response);

    }
}
