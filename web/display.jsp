<%-- 
    Document   : display
    Created on : Aug 11, 2016, 3:34:13 AM
    Author     : Usama Jamil
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.domains"%>
<jsp:useBean id="obj" class="model.domainsModel"/> 
<jsp:useBean id="obj1" class="model.sort"/>
<%
    PrintWriter out1=response.getWriter();
    String user=request.getParameter("username");
    String sort=request.getParameter("sortit");
    String loginas=request.getParameter("loginas");                      
%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>
        
 <style>
                 
            
            
            
            
            
            
            
            
            
        body {
	background-color: #00b3ee;
	color: #444;
	font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
	text-shadow: 0 1px 0 #fff;
}

strong {
	font-weight: bold; 
}

em {
	font-style: italic; 
}

table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}	

th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	

tbody:hover td {
	color: transparent;
	text-shadow: 0 0 3px #aaa;
}

tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body bgcolor="#00b3ee">
    
        <%   
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            String gender=request.getParameter("gender");
            String type=request.getParameter("sortby");
            List<domains> domainlist=new ArrayList();
           if(sort==null)
           {
            domainlist=obj.getAllDomains();
           }
           else
           {
               domainlist=obj1.getAllDomainsSorted(sort);
           }
           
           int j=0;
           
           %>
           <table cellspacing="1" cellpadding="4" border="3">
        <tr>
            <TH>
                Id
            </TH>
            <TH>
                Url
            </TH>
            <TH>
                Main Topics
            </TH>
            <TH>
                DA
            </TH>
            <TH>
                PA
            </TH>
            <TH>
                TF
            </TH>
            <TH>
                CF
            </TH>
            <TH>
                LRD
            </TH>
            <TH>
                Archive Categories
            </TH>
            <TH>
                Archive Date
            </TH>
            <TH>
                Available
            </TH>
            <TH>
                Price
            </TH>
            <TH>
                Cart Button
            </TH>
        </tr>

        
            <% j=0;
            while(j<domainlist.size())
           {
            %>
        <tr>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).id ); 
                    %>
                </center>
            </td>
            <td >
                <center>
                    <%out.println( domainlist.get(j).url );%>
                </center>
            </td>
            <td >
                <center class="xyz">
                    <% 
                    out.println( domainlist.get(j).topics ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).DA ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).PA ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).TF ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).CF ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).LRD ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).archieveCatagories ); 
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).date ); 
                    %>
                </center>
            </td><td>
                <center>
                    <% 
                        if(domainlist.get(j).available==1)
                        {
                                 out.println( "Yes" ); 
                        }
                        else
                        {
                                 out.println( "Yes" );
                        }
                    %>
                </center>
            </td>
            <td>
                <center>
                    <% 
                    out.println( domainlist.get(j).price ); 
                    %>
                </center>
            </td>
            </tr>
            <% j++;} %>
        
       
    </table>
            <form action="display.jsp" method="post">
             <div class="form__field">
            <input type="submit" value="SORT">
            </div>   
             <div class="styled-select">
            <select name="sortit">
             <option value="url" selected>url</option>
             <option value="id">ID</option>
             <option value="mainTopics">Main Topics</option>
             <option value="DA">DA</option>
             <option value="PA">PA</option>
             <option value="TF">TF</option>
             <option value="CF">CF</option>
             <option value="LRD">LRD</option>
             <option value="archieveCatagories">Archieve Catagories</option>
             <option value="archieveDate">Archieve Date</option>
             <option value="price">Price</option>
             <option value="lastAvailable">Available</option>
           </select>
            </div>
             </form>
            
    </body>
</html>
