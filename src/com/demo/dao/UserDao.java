package com.demo.dao;

import com.demo.model.User;
import com.demo.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    Connection connection = ConnectionUtil.getConnection();

    public List<User> getAllUser()
    {
        List<User> list = new ArrayList<>();
        String sql = "SELECT*FROM user";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                list.add(new User(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public String deleteUser(int user_id)
    {
        String sql = "DELETE FROM user WHERE user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, user_id);
            int isSuccess = ps.executeUpdate();
            if (isSuccess > 0)
            {
                return "Success";
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "Fail";
    }

    public void insertUser(String user_username , String user_password , String user_email )
    {
        String sql = "INSERT INTO user(user_username , user_password , user_email) VALUES (?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user_username);
            ps.setString(2, user_password);
            ps.setString(3,user_email);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public User getUserByID(int id)
    {
        String sql = "SELECT * FROM user WHERE user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void updateUser(int id , String name, String password, String email)
    {
        String sql = "UPDATE user SET user_username = ?, user_password = ? , user_email = ? WHERE user_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            ps.setString(3,email);
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public User getUser(String username , String password)
    {
        String sql = "SELECT * FROM user WHERE user_username = ? and user_password = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                User user = new User(rs.getString(1), rs.getString(2));
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public User checkAccountExist(String username)
    {
        String sql = "SELECT * FROM user WHERE user_username =?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                User user = new User(rs.getString(1), rs.getString(2));
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void Signup(String username , String password , String email)
    {
        String sql = "INSERT INTO user(user_username , user_password , user_email) VALUES (?,?,?) ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,email);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
