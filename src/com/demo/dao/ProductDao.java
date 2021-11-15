package com.demo.dao;

import com.demo.model.Product;
import com.demo.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    Connection connection = ConnectionUtil.getConnection();

    public List<Product> getAllProduct() {
        List<Product> listP = new ArrayList<>();
        String sql = "SELECT * FROM product";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listP.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return listP;
    }

    public String deleteProduct(int product_id) {
        String sql = "DELETE FROM product WHERE product_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, product_id);
            int isSuccess = ps.executeUpdate();
            if (isSuccess > 0) {
                return "Success";
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "Fail";
    }

    public void insertProduct(String product_name, int product_price, String product_image) {
        String sql = "INSERT INTO product(product_name, product_price, product_image) VALUES (?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, product_name);
            ps.setInt(2, product_price);
            ps.setString(3, product_image);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Product getProductByID(int id)
    {
        String sql = "SELECT * FROM product WHERE product_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                return new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void updateProduct(int id , String name , String price , String image)
    {
        String sql = "UPDATE product SET product_name = ? , product_price = ? , product_image = ? WHERE product_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2,price);
            ps.setString(3,image);
            ps.setInt(4,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
