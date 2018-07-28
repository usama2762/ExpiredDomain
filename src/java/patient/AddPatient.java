package patient;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AddPatient {
  public boolean add(String first,String last,String age,String prehis,String contact,String gender,String detail,String doctordiagnosis,String comment)
  {
     try {
            Class.forName("com.mysql.jdbc.Driver");
            try {              
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                stmt.executeUpdate("INSERT INTO `patient` (`firstname`, `lastname`, `age`, `history`, `contact`, `gender`,`doctor`, `detail`,`comment`) VALUES ('"+first+"', '"+last+"', '"+age+"', '"+prehis+"', '"+contact+"', '"+gender+"','"+doctordiagnosis+"','"+detail+"','"+comment+"')" );
                ResultSet rs= stmt.executeQuery("select * from patient Where firstname='"+first+"' AND lastname='"+last+"'");                
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
  public boolean update(Integer id,String first,String last,String age,String prehis,String contact,String gender,String detail,String doctordiagnosis,String comment)
  {
     try {
            Class.forName("com.mysql.jdbc.Driver");
            try {              
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                String ss="UPDATE `patient` SET `firstname`='"+first+"',`lastname`='"+last+"',`age`='"+age+"',`history`='"+prehis+"',`contact`='"+contact+"',`gender`='"+gender+"',`doctor`='"+doctordiagnosis+"',`detail`='"+detail+"',`comment`='"+comment+"' WHERE  patientid ="+id;
               out.println(ss);
                stmt.executeUpdate(ss);
                
                ResultSet rs= stmt.executeQuery("select * from patient Where patientid="+id);                
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
