package validate;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBprofile {
    public String picreturn(String a)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                
                ResultSet rs= stmt.executeQuery("SELECT * FROM `profile` WHERE `username` = '"+a+"'");
                String ss=null;
                
                 if(rs.next())
                {
                    
                 ss=rs.getString("picture");
                 System.out.println(ss);
                 return ss;
                }
                 else
                 {
                     return null;
                 }
               
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
return null;
    }
}
