<%-- 
    Document   : delete
    Created on : Sep 4, 2016, 5:54:49 PM
    Author     : Usama Jamil
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String st  = (String) request.getParameter("id");%>
<jsp:useBean id="obj" class="model.delete"/>
<% String name = (String) session.getAttribute("username");%>

<%if(name==null)
{

RequestDispatcher rd;

rd = request.getRequestDispatcher("login.jsp");

rd.forward(request,response);

}%>
<% int type = (int) session.getAttribute("type");%>
<%if(type==1)
{

RequestDispatcher rd;

rd = request.getRequestDispatcher("home.jsp");

rd.forward(request,response);

}%>
<%
    int integer=0;
    if(st!=null){
           integer = Integer.parseInt(st.trim());
    }
    obj.delete(integer);
    RequestDispatcher rd;

    rd = request.getRequestDispatcher("tables.jsp");

    rd.forward(request,response);

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    </body>
</html>
