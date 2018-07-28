/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usama Jamil
 */
public class profile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String ss=request.getParameter("username");
        //response.setContentType("text/html");
        //RequestDispatcher d = request.getRequestDispatcher("profile.html");
        
        //d.include(request, response);
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            PrintWriter out = response.getWriter();
            try {
                String userNm= request.getParameter("username");
                String passW= request.getParameter("password");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from profile Where firstname='"+userNm+"'" );
                ResultSetMetaData rsmd = rs.getMetaData();
                int columnCount = rsmd.getColumnCount();
                int rowCount = 0;
                
                if(rs.next())
                {
                    out.println("<P><TABLE>");
                    // while (rs.next()) 
                    // {
                        rowCount++;
                        out.println("<TR>");
                        //for (int i = 0; i < columnCount; i++) 
                        //{
                            out.println("<TD>" + rs.getString( 1) + "</TD>");
                            out.println("<TD>" + rs.getString( 2) + "</TD>");
                            out.println("<TD>" + rs.getString( 3) + "</TD>");
                        //}
                        out.println("</TR>");
                      //}
                      out.println("</TABLE></P>");
                     
                    
                }
                else     {
                    response.setContentType("text/html");
                    RequestDispatcher d = request.getRequestDispatcher("login.html");
                    d.include(request, response);
                }
            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
        
        
        
        
        
    }




