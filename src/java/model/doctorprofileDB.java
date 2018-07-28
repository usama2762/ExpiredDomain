
package model;

import controller.Doctor;
import controller.Patient;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class doctorprofileDB {
    public Doctor profile(String username) throws SQLException
    {
        Doctor doctor=new Doctor();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from profile where username='"+username+"'");
             if(rs.next()){
               // patientclass patient=new patientclass();
                doctor.username= rs.getString("username");                             
               doctor.firstname = rs.getString("firstname");
                doctor.lastname = rs.getString("lastname");
                doctor.email = rs.getString("Email");
                doctor.picture = rs.getString("picture");
               doctor.password = rs.getString("passowrd"); 
               
                return doctor;
             }
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
     return doctor;
    }
    public  boolean editprofile(String username,String first,String last,String pass,String im)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {              
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                out.println("sjbjsbdvbsdbv");
                String ss="UPDATE `profile` SET `firstname`='"+first+"',`lastname`='"+last+"',`picture`='"+im+"',`passowrd`='"+pass+"' WHERE  username ='"+username+"'";
                out.println(ss);
                stmt.executeUpdate(ss);
                
                ResultSet rs= stmt.executeQuery("select * from profile Where username='"+username+"'");                
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
        }
        return false;
    
  }
}


