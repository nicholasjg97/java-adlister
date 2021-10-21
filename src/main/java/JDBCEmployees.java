import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCEmployees {

    public static void main(String[] args) {

        try {

            DriverManager.registerDriver(new Driver());


            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/employees?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true",
                    "root",
                    "codeup"
            );

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT * FROM employees LIMIT 10");

            List<String> firstNames = new ArrayList<>();

           while(resultSet.next()) {
               String firstName = resultSet.getString("first_name");
               firstNames.add(firstName);
           }

            System.out.println(firstNames);



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }



}
