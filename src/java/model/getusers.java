/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usama Jamil
 */
public class getusers {
    Connection con;
    public getusers(){
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
    public List<users> getAllUsers(){
        List<users> domain = new ArrayList();
        
        Statement stmt;
        try {
            stmt = con.createStatement();
            String query = "Select * from profile ";
            ResultSet rs= stmt.executeQuery(query);
            while(rs.next())
            {
                if(rs.getString("loginas")!="Admin"){
                users dom=new users();
                dom.username=rs.getString("username");
                dom.fname=rs.getString("firstname");
                dom.lname=rs.getString("lastname");
                dom.email=rs.getString("email");
                dom.pass=rs.getString("passowrd");
                domain.add(dom);
                }
            }                    
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

        return domain;
    }
}
