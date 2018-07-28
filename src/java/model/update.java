/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.security.NoSuchAlgorithmException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Usama Jamil
 */
public class update {
    Connection con;
    public update(){
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
    public boolean update(int a,String b,int c,int d,int e,int f,int g,int h,int i,int j,int k,boolean l,int m,float n) throws NoSuchAlgorithmException
    {
           try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                String ss="UPDATE `edomains` SET `url`='"+b+"',`linked`="+c+",`alexa`="+d+",`DA`="+e+",`MR`="+f+",`ML`="+g+",`FB`="+h+",`google+1`="+i+",`linkedin`="+j+",`pinterest`="+k+",`Dmoz`="+l+",`wayback`="+m+",`price`="+n+" WHERE  id ="+a+"";
                out.println(ss);
                stmt.executeUpdate(ss);
                ResultSet rs= stmt.executeQuery("select * from profile Where id="+a+"");                
                if(rs.next())
                {
                    return true;
                }
                else
                    return false;
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
