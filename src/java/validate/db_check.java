package validate;


import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;



public class db_check { 

    private static Cipher dcipher;
    private  static SecretKey key;
    
    public static String decrypt(String str) {
        try {
            byte[] dec = BASE64DecoderStream.decode(str.getBytes());
            byte[] utf8 = dcipher.doFinal(dec);
            return new String(utf8, "UTF8");
        }
        catch (IllegalBlockSizeException | BadPaddingException | UnsupportedEncodingException e) {
            
            System.out.println(e.getMessage());
        }
        return "Hello World";

    }    
    
public boolean checkin(String a,String b, String c)
{
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                
                
                String q ="select * from profile Where username=? AND passowrd=? AND loginas=?";
                PreparedStatement ps = con.prepareStatement(q);
                ps.setString(1, a);
                ps.setString(2, b);
                ps.setString(3, c);
                
                ResultSet rs = ps.executeQuery();
                
                //ResultSet rs= stmt.executeQuery("select * from profile Where username='"+a+"' AND passowrd='"+b+"' AND loginas='"+c+"'");
                
                if(rs.next())
                {
                   
                    return true;
                    
                }
                else     
                {
                   return false;
                }
            } catch (SQLException ex) {
               // out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
return false;
}
}