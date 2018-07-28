<%-- 
    Document   : login
    Created on : Aug 10, 2016, 3:38:30 PM
    Author     : Usama Jamil
--%>

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

      <form action="" method="post" class="form form--login">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
          <input id="login__username" type="text" class="form__input" placeholder="Username" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="login__password" type="password" class="form__input" placeholder="Password" required>
        </div>

        <div class="form__field">
          <input type="submit" value="Sign In">
        </div>

      </form>

      <p class="text--center">Not a member? <a href="signup.jsp">Sign up now</a> <span class="fontawesome-arrow-right"></span></p>

    </div>

  </div>

</body>
    </body>
</html>
