package Services;

import Models.Connexion;
import Models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
    final String SQL_LOGIN = "SELECT * FROM `users` WHERE email=? and password=?;";

    public User UserLogin(String email,String password) throws SQLException {
        User user = null;
        Connection con = Connexion.getConnection();
        try {
            PreparedStatement statement = con.prepareStatement(SQL_LOGIN);
            statement.setString(1,email);
            statement.setString(2,password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.isBeforeFirst()){
                resultSet.next();
                user = new User(resultSet.getInt("id"),resultSet.getString("username")
                        ,resultSet.getString("email"),resultSet.getString("password"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }


}
