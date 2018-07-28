/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usama Jamil
 */
public class delete {
    Connection con;
    public delete(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
            } catch (SQLException ex) {
                Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public boolean delete(int id)
    {
        Statement stmt;
        try {
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
            stmt=con.createStatement();
            String query = "delete from `edomains` where id ="+id;
            PreparedStatement preparedStmt = con.prepareStatement(query);
            out.println(query);
            preparedStmt.execute();
            con.close();
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
