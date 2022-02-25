
import DAL.AccountDAO;
import model.Users;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
public class test {
    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();
        Users us = ad.getAccountByUsernameAndPassword("Admin1", "Admin");
        System.out.println(us == null);
    }
}
