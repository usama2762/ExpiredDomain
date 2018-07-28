/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.DD;
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
public class doctorDiagnosisWeb {
    Connection con;
    public doctorDiagnosisWeb()
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
    
    public List<DD> searchPatient(){
        List<DD> patients = new ArrayList();
        
        Statement stmt;
        try {
            stmt = con.createStatement();
            String query = "Select * from patient ";
            ResultSet rs= stmt.executeQuery(query);
            
            while(rs.next())
            {
                DD patient=new DD();

                patient.doctordiagnosis = rs.getString("doctor");

                patients.add(patient);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(PatientModel.class.getName()).log(Level.SEVERE, null, ex);
        }

        return patients;
    }
}
