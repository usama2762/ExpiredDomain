/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import controller.DD;
import controller.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.PatientModel;
import model.doctorDiagnosisWeb;
import org.codehaus.jackson.map.ObjectMapper;

/**
 *
 * @author Usama Jamil
 */
public class doctorDiagnosis extends HttpServlet {

  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doctorDiagnosisWeb model = new doctorDiagnosisWeb();
        response.setContentType("application/json");
        
        List<DD> pts = model.searchPatient();
        
        final StringWriter sw =new StringWriter();
        final ObjectMapper mapper = new ObjectMapper();
        
        mapper.writeValue(sw, pts);
        
        String result = sw.toString();  //use toString() to convert to JSON
        PrintWriter out = response.getWriter();
        out.print(result);
        sw.close(); 

    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    
}
