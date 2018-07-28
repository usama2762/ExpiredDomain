

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*; 
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Usama Jamil
 */
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        RequestDispatcher d = request.getRequestDispatcher("login.html");
        
        d.include(request, response);
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            PrintWriter out = response.getWriter();
            try {
                String userNm= request.getParameter("username");
                String passW= request.getParameter("password");
                
                
                
                
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/expiredomain","root","");
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery("select * from user Where username='"+userNm+"' AND password='"+passW+"'");
                
                
                if(rs.next())
                {
                    
                    RequestDispatcher d = request.getRequestDispatcher("insert");
                    d.forward(request, response);
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
