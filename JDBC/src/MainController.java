import java.sql.*;

public class MainController {
    Connection con = null;

    public void runProgram() {
       getConnection();

    }

    public Connection getConnection() {
        Connection con = null;
        String user = "root";
        String password = "root123";
        String urlAddOn = "?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
        String url = "jdbc:mysql://localhost:3306/InterFloraIV"+urlAddOn;
        try {
            con = DriverManager.getConnection(url,user,password);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
