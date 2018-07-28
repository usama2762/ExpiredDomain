<%-- 
    Document   : signup
    Created on : Aug 10, 2016, 3:53:36 PM
    Author     : Usama Jamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="obj" class="validate.signupvalidate"/> 
<%
       RequestDispatcher rd;
    String username=request.getParameter("username");
    String email=request.getParameter("email");
    String first=request.getParameter("firstname");
    String last=request.getParameter("lastname");
    String pass="kuchBhiRakhLo";
    String im="abc.jpg";
    String log="Doctor";
    boolean suc=false;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link href="css/signup.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <br><br><br><br>
        <%
               if(username!=null  && first!=null && last!=null && email!=null)
               {
                   if(!username.isEmpty()&& !pass.isEmpty()&&!first.isEmpty()&&!last.isEmpty()&&!email.isEmpty())
                   {
                       if(!obj.validationemail(email) && !obj.validationusername(username))
                       {
                           if(obj.signupuser(username,first,last,pass,email,log,im))
                           {
                               

                             suc=true;

                           }
                           else
                           {
                               out.println("SignUp Faild!");
                           }
                       }
                   }
               }
           %>
            <%if(suc==true){%>
        
        <h1 align="center">Signed up Successfully!</h1>
        <h1 align="center">Signed up Successfully!</h1>
        </br>
    </h2 ><form align="center">An Email has been sent to you with a password.</br>Kindly login with that password! </br>Thanks!</br>Regards:Usama Jamil (l134040)     </form> </h2>
    </br></br></br></br>
    <form align="center" action="home.jsp">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="OK">
    </form>
        
        
        <%}%>
         <%if(suc==false){%>
         <form class="signup" method="post">
		<ul class="singup-list">
			<li class="signup-item">
				<input type="text" name="username" placeholder="Username" class="signup-input">
                                <label for="" class="signup-label">Username</label>
                                 <%
                                    if(username!=null )
                                    {
                                        if(!username.isEmpty())
                                        {
                                           if(obj.validationusername(username))
                                           {
                                               out.println("Username already exists");
                                           }

                                        }
                                        else
                                        {
                                             out.println("Field Required !");
                                        }

                                    }
                                %>
				
			</li>
                        </br>
                        <li class="signup-item">
                            
                        <input type="text" name="firstname" placeholder="First Name" class="signup-input">
                        <label for="" class="signup-label">First Name</label>
                         <%
                            if(first!=null )
                              {
                                  if(first.isEmpty())
                                  {
                                         out.println("Field Required !");


                                  }
                              }
                        %>
                        </li>
                        </br>
                        <li class="signup-item">
                            
                        <input type="text" name="lastname" placeholder="Last Name" class="signup-input">
                        <label for="" class="signup-label">Last Name</label>
                        <%
                            if(last!=null )
                              {
                                  if(last.isEmpty())
                                  {
                                         out.println("Field Required");


                                  }
                              }
                        %>
                        </li>
                        </br>
			<li class="signup-item">
				<input type="email" name="email" placeholder="user@gmail.com" class="signup-input">
				<label for="" class="signup-label">Email</label>
                                <%
                                    if(email!=null )
                                    {
                                        if(!email.isEmpty())
                                        {
                                           if(obj.validationemail(email))
                                           {
                                               out.println("Email already exists");
                                           }

                                        }
                                        else
                                        {
                                             out.println("Field Required !");
                                        }
                                    }
                                %>
			</li>
                        </br>
                        </br>
                        </br>			
                        </br>
			
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input  value='submit' type='submit' class="signup-input">
                                
			
		</ul>
	</form>
                        <form class="signup" action="home.jsp">
                        <input type="submit" value="Cancel" class="signup-input">
                        </form>
        
        <%}%>
        
    </body>
</html>
