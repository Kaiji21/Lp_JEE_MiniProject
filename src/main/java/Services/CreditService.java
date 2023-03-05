package Services;

import Models.Connexion;
import Models.Credit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CreditService {
    final String SQL_GETALLCREDIT = "Select * from credit";
    final String SQL_ADDCREDIT="INSERT INTO `credit`(`Nom`, `Description`, `Montant`, `Duree`, `Taux`, `Simulation`, `iduser`) VALUES (?,?,?,?,?,?,?)";
     public ArrayList<Credit> getallCreditbyuser(int iduser){
         ArrayList<Credit> List = new ArrayList<>();
         Connection con = Connexion.getConnection();
         try {
             ResultSet resultSet = con.createStatement().executeQuery(SQL_GETALLCREDIT);
             while (resultSet.next()){
                 Credit credit = new Credit(resultSet.getInt("idcredit"),resultSet.getString("Nom")
                         ,resultSet.getString("Description"),resultSet.getDouble("Montant")
                         ,resultSet.getInt("Duree"), resultSet.getDouble("Taux")
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

}
