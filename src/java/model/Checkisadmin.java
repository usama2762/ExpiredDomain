package model;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Checkisadmin {
    public boolean checkadminavailable(String To)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
         
            try {
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();                
                ResultSet rs= stmt.executeQuery("SELECT * FROM `profile` WHERE `username` = '"+To+"'");
                if(rs.next())
                {
                 return true;
                }
                 else
                 {
                     return false;
                 }
               
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
return false;
    }
    public void sendtoadmin(String to,String from,String subject,String body)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {              
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                String ss="INSERT INTO `contact` (`username`, `from`, `subject`, `body`,`status`) VALUES ('"+to+"', '"+from+"', '"+subject+"', '"+body+"','0')";
                out.println(ss);
                stmt.executeUpdate(ss );
               
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }

    }
    
    
}
