package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/chess?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "systemadmin";

    private static DAO instance;
    private Connection connection;

    public static DAO getInstance() {
        if (instance == null) {
            instance = new DAO();
        }
        return instance;
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Connected to Database.");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
}
