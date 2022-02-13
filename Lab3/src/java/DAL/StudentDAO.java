/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
*
* @author fsoft
*/
public class StudentDAO extends BaseDAO<Student> {

   @Override
   public ArrayList<Student> getAll() {
       ArrayList<Student> students = new ArrayList<>();
       try {
           String sql = "SELECT [id]\n" +
                   "      ,[name]\n" +
                   "      ,[gender]\n" +
                   "      ,[dob]\n" +
                   "  FROM [Students]";
           PreparedStatement statement = connection.prepareStatement(sql);
           ResultSet rs = statement.executeQuery();
           while(rs.next())
           {
               Student s = new Student();
               s.setId(rs.getInt("Id"));
               s.setName(rs.getString("Name"));
               s.setGender(rs.getString("Gender"));
               s.setDOB(rs.getDate("dob"));
               students.add(s);
           }
       } catch (SQLException ex) {
           Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
       }
       return students;
   }
   public void deleteStudent(String id){
       try {
           String sql = "delete from Students where Id = ?";
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, id);
           statement.executeUpdate();
       } catch (Exception e) {
       }
   }
   public void insertStudent(String name,String gender,String dob){
       try {
           String sql = "insert into Students values\n" +
"(?,?,?)";
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, name);
           statement.setString(2, gender);
           statement.setString(3, dob);
           statement.executeUpdate();
       } catch (Exception e) {
       }
   }
   public Student getStudentbyId(String id){
       Student s = new Student();
       try {
           String sql = "select * from Students where Id = ?";
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, id);
           ResultSet rs = statement.executeQuery();
           
           while(rs.next())
           {
               
               s.setId(rs.getInt("Id"));
               s.setName(rs.getString("Name"));
               s.setGender(rs.getString("Gender"));
               s.setDOB(rs.getDate("dob"));
               
           }
           
       } catch (Exception e) {
       }
       return s;
   }
   public void editStudent(String id,String name,String gender,String dob){
       try {
           String sql ="update Students set Name = ?, Gender = ?, DOB = ? where Id = ?";
           
           
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, name);
           statement.setString(2, gender);
           statement.setString(3, dob);
           statement.setString(4, id);
           statement.executeUpdate();
       } catch (Exception e) {
       }
   }
}