/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import static java.lang.System.out;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.apache.coyote.http11.Constants.a;

/**
 *
 * @author Usama Jamil
 */
public class insert {
    Connection con;
    public insert(){
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
    public boolean insert(String b,int c,int d,int e,int f,int g,int h,int i,int j,int k,boolean l,int m,float n) throws NoSuchAlgorithmException
    {
           try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                String query = "INSERT INTO `edomains` (`url`, `linked`, `alexa`, `DA`, `MR`, `ML`, `FB`, `google+1`, `linkedin`, `pinterest`, `Dmoz`, `wayback`, `price`, `userId`) VALUES ('"+b+"', "+c+", "+d+", "+e+", "+f+", "+g+", "+h+", "+i+", "+j+", "+k+", "+l+", "+m+", "+n+", "+0+")";
                PreparedStatement preparedStmt = con.prepareStatement(query);
                out.println(query);
                preparedStmt.execute();
                return true;
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
            return false;
        }
           return false;
    }
}
