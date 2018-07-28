/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.edomains;
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
public class adminedomainsmodel {
    Connection con;
    public adminedomainsmodel(){
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
    public List<edomains> getAllDomains(){
        List<edomains> domain = new ArrayList();
        
        Statement stmt;
        try {
            stmt = con.createStatement();
            String query = "Select * from edomains";
            ResultSet rs= stmt.executeQuery(query);
            while(rs.next())
            {
                edomains dom=new edomains();
                dom.id=rs.getInt("id");
                dom.url=rs.getString("url");
                /*int s=dom.url.length();
                for(int i=0;i<s;i++)
                {
                    if(dom.url.charAt(i)=='.')
                    {
                       String t="";
                       for(int j=0;j<i;j++)
                       {
                           if(dom.url.charAt(j)=='-')
                           {
                               t=t+'-';
                           }
                           else
                           {
                               t=t+'x';
                           }
                       }
                       dom.url=t+dom.url.substring(i, s);
                       break;
                    }
                }*/
                dom.alexa=rs.getInt("alexa");
                dom.linked=rs.getInt("linked");
                dom.DA=rs.getInt("DA");
                dom.MR=rs.getInt("MR");
                dom.ML=rs.getInt("ML");
                dom.FB=rs.getInt("FB");
                dom.google=rs.getInt("google+1");
                dom.linkedin=rs.getInt("linkedin");
                dom.pinterest=rs.getInt("pinterest");
                dom.Dmoz=rs.getBoolean("Dmoz");
                dom.wayback=rs.getInt("wayback");
                dom.price=rs.getFloat("price");
                dom.userid=rs.getInt("userId");
                domain.add(dom);
            }                    
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

        return domain;
    }
}
