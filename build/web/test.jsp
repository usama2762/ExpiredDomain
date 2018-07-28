<%-- 
    Document   : test
    Created on : Aug 11, 2016, 4:15:45 AM
    Author     : Usama Jamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>
        
        <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        

    </head>
    <body>
        <input type="button" value="ali" onclick="a()">
       <div class="container">
    <table id="table" class="display table table-hover table-stripped table-bordered">
       
         <thead>

            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Password</th>
            
                
            </tr>
        </thead>
        <tbody>
            
                <tr>
                    <td>
                        ali
                    </td>
                    <td>
                        akbar
                    </td>
                    <td>
                        hasan
                    </td>
                    <td>
                      abdullah
                    </td>
                    <%--  <td>
                        <input type='button' class='botaoadd' onclick='update(@item.Id)' value='Update' />
                        <input type='button' class='botaoadd' onclick='Delete(@item.Id)' value='Delete' />
                    </td> --%>
                </tr>
            
        </tbody>
    </table>
    </div>
      <script src="js/jquery.min.js" type="text/javascript"></script>            
      <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>  
      <script>
            $(document).ready(function(){
                
                
            }); 
            
                     $('#table').DataTable();
            
           
        </script>
    </body>
</html>
