package com.demo.model;

public class User {
    private int user_id;
    private String user_username;
    private String user_password;
    private String user_email;

    public User(int user_id, String user_username, String user_password, String user_email) {
        this.user_id = user_id;
        this.user_username = user_username;
        this.user_password = user_password;
        this.user_email = user_email;
    }

    public User( String user_username, String user_password) {
        this.user_username = user_username;
        this.user_password = user_password;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_username() {
        return user_username;
    }

    public void setUser_username(String user_username) {
        this.user_username = user_username;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }
}
