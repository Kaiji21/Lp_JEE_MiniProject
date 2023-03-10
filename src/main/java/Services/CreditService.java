package Services;

import Models.Connexion;
import Models.Credit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CreditService {
    final String SQL_GETALLCREDIT = "Select * from credit WHERE iduser =?";
    final String SQL_ADDCREDIT="INSERT INTO `credit`(`Nom`, `Description`, `Montant`, `Duree`, `Taux`, `Simulation`, `iduser`) VALUES (?,?,?,?,?,?,?)";
    final String SQL_DELETECREDIT = "DELETE FROM `credit` WHERE idcredit=?";
     public ArrayList<Credit> getallCreditbyuser(int iduser){
         ArrayList<Credit> List = new ArrayList<>();
         Connection con = Connexion.getConnection();
         try {
             PreparedStatement preparedStatement = con.prepareStatement(SQL_GETALLCREDIT);
             preparedStatement.setInt(1,iduser);
             ResultSet resultSet = preparedStatement.executeQuery();
             while (resultSet.next()){
                 Credit credit = new Credit(resultSet.getInt("idcredit"),resultSet.getString("Nom")
                         ,resultSet.getString("Description"),resultSet.getInt("Montant")
                         ,resultSet.getInt("Duree"), resultSet.getInt("Taux")
                         ,resultSet.getString("Simulation"),resultSet.getDate("DateCreation"));
                 List.add(credit);
             }

         }
         catch (SQLException e){
             throw new RuntimeException(e);

         }
         return List;
     }
     public boolean CreditInsert(Credit credit, int iduser){
         Connection con = Connexion.getConnection();
         boolean isadded= false;
         try{
             PreparedStatement preparedStatement = con.prepareStatement(SQL_ADDCREDIT);
             preparedStatement.setString(1,credit.getNom());
             preparedStatement.setString(2,credit.getDescription());
             preparedStatement.setDouble(3,credit.getMontant());
             preparedStatement.setInt(4,credit.getDuree());
             preparedStatement.setDouble(5,credit.getTaux());
             preparedStatement.setString(6,credit.getSimulation());
             preparedStatement.setInt(7,iduser);
             int rowaffected = preparedStatement.executeUpdate();
             isadded = rowaffected>0?true:false;

         }catch (SQLException exception){
             throw new RuntimeException(exception);
         }
         return  isadded;
     };
     public boolean CreditDelete(int idcredit) throws SQLException {
         Connection con = Connexion.getConnection();
         PreparedStatement statement = con.prepareStatement(SQL_DELETECREDIT);
         statement.setInt(1,idcredit);
         int rowaffected = statement.executeUpdate();
         boolean isdeleted = rowaffected>0?true:false;
         return  isdeleted;

     }

}
