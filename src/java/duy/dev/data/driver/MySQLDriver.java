package duy.dev.data.driver;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLDriver {

    final String DB_URL = "jdbc:mysql://localhost:3306/shop";
    final String USER = "root";
    final String PASS = "theduy123";
    private static MySQLDriver instance;

    private MySQLDriver() {
    }

    public static MySQLDriver getInstance() {
        if (instance == null) {
            instance = new MySQLDriver();
        }
        return instance;
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }
}
