package Services;

import Models.Connexion;
import Models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
    final String SQL_LOGIN = "SELECT * FROM `users` WHERE email=? and password=?;";
    final String SQL_ADD_USER = "INSERT INTO `users`( `username`, `email`, `password`) VALUES (?,?,?);";

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
    public boolean UserInsert(String username,String email,String password) throws SQLException {
        Connection con = Connexion.getConnection();
        PreparedStatement statement = con.prepareStatement(SQL_ADD_USER);
        statement.setString(1,username);
        statement.setString(2,email);
        statement.setString(3,password);
        int rowaffected = statement.executeUpdate();
        boolean isadded = rowaffected>0?true:false;

        return  isadded;
    }


}
