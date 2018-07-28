package validate;
import com.sun.mail.util.BASE64EncoderStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class checksignup {
    private static Cipher ecipher;
    private static SecretKey key;
    
    public boolean validateusername(String a)
    {
           try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("SELECT * FROM `profile` WHERE `username` = '"+a+"'" );
                
                if(rs.next())
                 {
                    System.out.println(".lehg.kjsafgbhasbg,jvh");
                    //ss=rs.getString("picture");
                    //System.out.println(ss);
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
    protected String getSaltString() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 8) {
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
    
    public boolean validatemail(String a)
    {
           try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("SELECT * FROM `profile` WHERE `email` = '"+a+"'" );
                
                if(rs.next())
                 {
                    System.out.println(".lehg.kjsafgbhasbg,jvh");
                    //ss=rs.getString("picture");
                    //System.out.println(ss);
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
    
    public static String encrypt(String str) {

        try {
            byte[] utf8 = str.getBytes("UTF8");

            byte[] enc = ecipher.doFinal(utf8);

            enc = BASE64EncoderStream.encode(enc);

            return new String(enc);

        }

        catch (UnsupportedEncodingException | IllegalBlockSizeException | BadPaddingException e) {
            
        }
        return null;
    }   
    
    public boolean signup(String a,String b,String c,String d,String e,String f,String g) throws NoSuchAlgorithmException
    {
           try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                
                String pass=getSaltString();
                String cpass = pass;
                /*try {
                    key = KeyGenerator.getInstance("DES").generateKey();
                } catch (NoSuchAlgorithmException ex) {
                    Logger.getLogger(checksignup.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                    ecipher = Cipher.getInstance("DES");
                } catch (NoSuchPaddingException ex) {
                    Logger.getLogger(checksignup.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                    ecipher.init(Cipher.ENCRYPT_MODE, key);
                } catch (InvalidKeyException ex) {
                    Logger.getLogger(checksignup.class.getName()).log(Level.SEVERE, null, ex);
                }*/
                //String encrypted = encrypt(cpass);
                
                
                stmt.executeUpdate("INSERT INTO `profile` (`username`, `firstname`, `lastname`, `Email`, `picture`, `passowrd`, `loginas`) VALUES ('"+a+"', '"+b+"', '"+c+"', '"+e+"', '"+g+"', '"+cpass+"', '"+f+"')" );
                mail1 objx=new mail1();
                String []temp1={e,pass}; 
                mail1.main(temp1);
                ResultSet rs= stmt.executeQuery("select * from profile Where username='"+a+"'");                
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
