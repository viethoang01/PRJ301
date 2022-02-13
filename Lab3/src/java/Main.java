
import DAL.StudentDAO;
import java.util.ArrayList;
import model.Student;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
public class Main {
    public static void main(String[] args) {
        StudentDAO st = new StudentDAO();
        ArrayList<Student> list = st.getAll();
        for (Student l : list) {
            System.out.println(l.getName());
        }
    }
}
