package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.jdbc.Driver;

import javax.servlet.jsp.jstl.core.Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLUsersDao implements Users {

    private Connection connection = null;

    public MySQLAdsDao (Config config) {

        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public Long insert(User user) {
        return null;
    }
}
