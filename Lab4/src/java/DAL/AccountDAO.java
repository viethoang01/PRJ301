/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Users;

/**
*
* @author fsoft
*/
public class AccountDAO extends BaseDAO<Users> {
      @Override
   public ArrayList<Users> getAll() {
       return null;
       
   }
   public Users getAccountByUsernameAndPassword(String username,String password){
       
       
       try{
           Users user = new Users();
           String sql = "select * from Users where username = ? and password = ?";
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, username);
           statement.setString(2, password);
           ResultSet rs = statement.executeQuery();
           if(rs.next())
           {
               
               user.setName(rs.getString("username"));
               user.setPassword(rs.getString("password"));
               user.setDisplayname(rs.getString("displayname"));
               return user;
           }
           
          
       }catch(SQLException e){
           
       }
          return null;
       
   }
}