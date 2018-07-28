/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import controller.domains;
import controller.edomains;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import static java.lang.Integer.parseInt;

/**
 *
 * @author Usama Jamil
 */
public class domainsModel {
    Connection con;
    public domainsModel(){
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
    public List<domains> getAllDomains(){
        List<domains> domain = new ArrayList();
        
        Statement stmt;
        try {
            stmt = con.createStatement();
            String query = "Select * from domains";
            ResultSet rs= stmt.executeQuery(query);
            while(rs.next())
            {
                domains dom=new domains();
                dom.id=rs.getInt("Id");
                dom.url=rs.getString("url");
                int s=dom.url.length();
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
                }
                dom.topics=rs.getString("mainTopics");
                s=dom.topics.length();
                for(int i=0;i<s;i++)
                {
                    if(dom.topics.charAt(i)=='\n')
                    {
                       dom.topics = dom.topics.substring(0, i) + "<BR>" + dom.topics.substring(i, dom.topics.length());
                       i=i+4;
                    }
                }
                dom.DA=rs.getInt("DA");
                dom.PA=rs.getInt("PA");
                dom.CF=rs.getInt("CF");
                dom.LRD=rs.getInt("LRD");
                dom.TF=rs.getInt("TF");
                dom.archieveCatagories=rs.getString("archieveCatagories");
                dom.date=rs.getDate("archieveDate").toString();
                dom.date=dom.date.replaceAll("-01-01", "");
                dom.available=rs.getInt("lastAvailable");
                dom.price=rs.getFloat("price");
                domain.add(dom);
            }                    
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

        return domain;
    }
}
