
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.sun.org.apache.xpath.internal.operations.Bool"%>
<%@page language="java" session="true" %>
<%@page import="validate.checklogin"%>
<%@page import="java.io.PrintWriter"%>
<% int  type= (int) 0;%>
<jsp:useBean id="obj" class="validate.checklogin"/>  
<%
    PrintWriter out1=response.getWriter();
    String user=request.getParameter("username");
    String password=request.getParameter("password");
    String loginas="Admin"; 
    Boolean f=false;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
   <body class="align">

  <div class="site__container">

    <div class="grid__container">

      <form action="adminlogin.jsp" method="post" class="form form--login">

        <div class="form__field" >
          <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
          <input id="login__username" name="username" type="text" class="form__input" placeholder="Username" required>
           <%
                    if(user!=null )
                    {
                        if(!user.isEmpty())
                        {
                            //checklogin obj=new checklogin();
                            boolean ob =obj.logincheck(user,password,loginas);
                            if(ob)
                             {
                                 
                                  if(loginas.equals("Admin")){
                                      session.setAttribute("username", user);
                                      session.setAttribute("type", 2);
                                      RequestDispatcher requestDispatcher; 
                                      requestDispatcher = request.getRequestDispatcher("index.jsp");
                                      requestDispatcher.forward(request, response);
                                  }
                                  else
                                  {
                                      session.setAttribute("username", user);
                                      session.setAttribute("type", 1);
                                      RequestDispatcher requestDispatcher; 
                                      requestDispatcher = request.getRequestDispatcher("home.jsp");
                                      requestDispatcher.forward(request, response);
                                  }
                                      
                             }
                            else
                            {
                                session.invalidate();
                                f=true;
                            }
                            
                        }
                    }
                    if(user!=null &&user.isEmpty())
                    {
            %>
            <%} %>
            
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="password" type="password" class="form__input" name="password" placeholder="Password" required>
          <%if(password!=null && password.isEmpty())
                {%>
                 this field is required
                <%         
                }
               %>
        </div>
        
        <div class="form__field">
          <input type="submit" value="Sign In">
        </div>
    

      </form>

      <p class="text--center">Not a member? <a href="signup.jsp">Sign up now</a> <span class="fontawesome-arrow-right"></span></p>
       <p class="text--center">Want to Go Home? <a href="home.jsp">Click Here</a> <span class="fontawesome-arrow-right"></span></p>
        <%
            if(f==true)
            {
                f=false;
                 out1.println("<div class="+"'grid__container'"+"><p class="+"'text--center'"+">Login Failed!!!<a href="+"'home.jsp'"+"></a> <span class="+"'fontawesome-arrow-right'"+"></span></p><div>");
            }
           %>
    </div>

  </div>
       <script src="js/dropdown.js" type="text/javascript"></script>
</body>
    
</html>
