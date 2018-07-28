
package model;
import controller.Messages;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class messagedb {
    public List allmessages(String name) throws SQLException
    {
        List<Messages> ms=new ArrayList();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from contact where username='"+name+"'");
                               
                
                while(rs.next())
                {
                Messages msg=new Messages();
                msg.id=rs.getInt("msgid");
                msg.from= rs.getString("from");                             
                msg.subject = rs.getString("subject");
                msg.body = rs.getString("body");
                
                 ms.add(msg);
                
                }
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    return ms;
    }
    public void markread(String msgid)
    {
    try {
            Class.forName("com.mysql.jdbc.Driver");
           
            try {
              int n=Integer.parseInt(msgid);
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                String ss="UPDATE `contact` SET `status`=1 WHERE msgid="+n ;
               stmt.executeUpdate(ss);
                out.println(ss);
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    
    
    }
}
