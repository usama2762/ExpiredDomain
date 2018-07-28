/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import controller.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.searchGender;
import org.codehaus.jackson.map.ObjectMapper;

/**
 *
 * @author Usama Jamil
 */
public class searchByGender extends HttpServlet {



   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");

        String q = request.getParameter("gender");
        searchGender model = new searchGender();        
        List<Patient> pts = model.searchPatient(q);
        
        final StringWriter sw =new StringWriter();
        final ObjectMapper mapper = new ObjectMapper();
        
        mapper.writeValue(sw, pts);
        
        String result = sw.toString();      //use toString() to convert to JSON
        PrintWriter out = response.getWriter();
        out.print(result);
        sw.close();
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
