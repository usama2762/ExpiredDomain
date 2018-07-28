
package patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DeletePatient {
    public boolean delete(String id)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                int number = Integer.parseInt(id);
                stmt.executeUpdate("DELETE FROM `patient` WHERE patientid='"+number+"'");
                     ResultSet rs= stmt.executeQuery("select * from profile Where patientid='"+number+"'");                
                if(rs.next())
                {
                    return false;
                }
                else
                    return true;
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
return true;
    
    }
    public boolean deleteall()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
               // int number = Integer.parseInt(id);
                stmt.executeUpdate("DELETE FROM `patient` ");
                     ResultSet rs= stmt.executeQuery("select * from patient ");                
                if(rs.next())
                {
                    return false;
                }
                else
                    return true;
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
return true;
    
    }
}
