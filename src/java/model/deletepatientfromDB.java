

package model;

import controller.Patient;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class deletepatientfromDB {
    public List delete() throws SQLException
    {
        List<Patient> patientlist=new ArrayList();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from patient ");
                               
                
                while(rs.next())
                {
                Patient patient=new Patient();
                patient.patientid= rs.getInt("patientid");                             
                patient.firstname = rs.getString("firstname");
                patient.lastname = rs.getString("lastname");
                patient.age = rs.getString("age");
               patient.history = rs.getString("history"); 
                patient.contact = rs.getString("contact");
                patient.gender = rs.getString("gender");
                patient.doctordiagnosis = rs.getString("doctor");
                patient.detail = rs.getString("detail");
                  patient.comment = rs.getString("comment");
                 patientlist.add(patient);
                
                }
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    return patientlist;
    }
    public Patient profile(String patientid) throws SQLException
    {
        Patient patientlist=new Patient();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from patient where patientid='"+patientid+"'");
             if(rs.next()){
               // patientclass patient=new patientclass();
                patientlist.patientid= rs.getInt("patientid");                             
               patientlist.firstname = rs.getString("firstname");
                patientlist.lastname = rs.getString("lastname");
                patientlist.age = rs.getString("age");
               patientlist.history = rs.getString("history"); 
               patientlist.contact = rs.getString("contact");
               patientlist.gender = rs.getString("gender");
                patientlist.doctordiagnosis = rs.getString("doctor");
               patientlist.detail = rs.getString("detail");
                patientlist.comment = rs.getString("comment");
                return patientlist;
             }
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
     return patientlist;
    }
    public List searchbyname(String name,String age,String gender,String type) throws SQLException
    {
        List<Patient> patientlist=new ArrayList();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                String ss="select * from patient where firstname='"+name+"' OR age='"+age+"' OR gender='"+gender+"' ORDER BY `"+type+"` ASC";
                out.println(ss);
                ResultSet rs= stmt.executeQuery(ss);
                               
                
                while(rs.next())
                {
                Patient patient=new Patient();
                patient.patientid= rs.getInt("patientid");                             
                patient.firstname = rs.getString("firstname");
                patient.lastname = rs.getString("lastname");
                patient.age = rs.getString("age");
               patient.history = rs.getString("history"); 
                patient.contact = rs.getString("contact");
                patient.gender = rs.getString("gender");
                patient.doctordiagnosis = rs.getString("doctor");
                patient.detail = rs.getString("detail");
                  patient.comment = rs.getString("comment");
                 patientlist.add(patient);
                
                }
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    return patientlist;
    }
    public List searchbyage(String name) throws SQLException
    {
        List<Patient> patientlist=new ArrayList();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from patient where age='"+name+"'");
                               
                
                while(rs.next())
                {
                Patient patient=new Patient();
                patient.patientid= rs.getInt("patientid");                             
                patient.firstname = rs.getString("firstname");
                patient.lastname = rs.getString("lastname");
                patient.age = rs.getString("age");
               patient.history = rs.getString("history"); 
                patient.contact = rs.getString("contact");
                patient.gender = rs.getString("gender");
                patient.doctordiagnosis = rs.getString("doctor");
                patient.detail = rs.getString("detail");
                  patient.comment = rs.getString("comment");
                 patientlist.add(patient);
                
                }
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    return patientlist;
    }
    public List searchbygender(String name) throws SQLException
    {
        List<Patient> patientlist=new ArrayList();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            //PrintWriter out = response.getWriter();
            try {
              //  String userNm= request.getParameter("username");
              //  String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from patient where gender=' "+name+"'");
                               
                
                while(rs.next())
                {
                Patient patient=new Patient();
                patient.patientid= rs.getInt("patientid");                             
                patient.firstname = rs.getString("firstname");
                patient.lastname = rs.getString("lastname");
                patient.age = rs.getString("age");
               patient.history = rs.getString("history"); 
                patient.contact = rs.getString("contact");
                patient.gender = rs.getString("gender");
                patient.doctordiagnosis = rs.getString("doctor");
                patient.detail = rs.getString("detail");
                  patient.comment = rs.getString("comment");
                 patientlist.add(patient);
                
                }
                
            } catch (SQLException ex) {
              System.out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    return patientlist;
    }
}
