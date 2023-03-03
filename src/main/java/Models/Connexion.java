package Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {
    private static Connection con ;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection
                    ("jdbc:mysql://localhost/db_lp_jee_miniproject","root","");
            System.out.println("Connected successefuly.");

        } catch (ClassNotFoundException e) {
            System.err.println("Connection failed");
        } catch (SQLException e) {
            System.err.println("Connection failed");
        }
        return con;
    }

}
