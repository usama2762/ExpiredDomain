/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.Patient;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usama Jamil
 */
public class searchnameModel {
    Connection con;
    public searchnameModel()
    {
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
     public List<Patient> searchPatient(String q){
        List<Patient> patients = new ArrayList();
        
        Statement stmt;
        try {
            stmt = con.createStatement();
            String query = "Select * from patient WHERE age LIKE '"+q+"'";
            ResultSet rs= stmt.executeQuery(query);
            
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
                patients.add(patient);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

        return patients;
    }
    
}
