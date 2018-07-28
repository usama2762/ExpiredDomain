<%-- 
    Document   : tables
    Created on : Aug 21, 2016, 4:43:24 PM
    Author     : Usama Jamil
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controller.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String name = (String) session.getAttribute("username");%>
<jsp:useBean id="obj" class="model.getusers"/> 
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Expired Domeins</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<link href="css/styles3.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Expired</span>Domains</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> <%=name%> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
							<li><a href="logout.jsp"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
		<ul class="nav menu">
                    <li><a href="index.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Back To DashBoard</a></li>
			
                        <li class="active"><a href="#"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Manage Users</a></li>
			
			</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Icons</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div><!--/.row-->
				
		
                 <%
               
            
            String age=request.getParameter("age");
            String gender=request.getParameter("gender");
            List<users> domainlist=new ArrayList();
           
            domainlist=obj.getAllUsers();
        
           int j=0;

            %>
                
                
                
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
                                            <table data-toggle="table" id="usama" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    <tr>
						        <th>User Name</th>
                                                        <th>First Name</th>
                                                        <th>Last Name</th>
                                                        <th>Email</th>
                                                        <th>Password</th>
						    </tr>
						    </thead>
                                                    <tbody id="simple">

                                                        <% j=0;
                                                        while(j<domainlist.size())
                                                       {
                                                        %>
                                                    <tr>
                                                        <td data-search="<%=domainlist.get(j).username %>">

                                                                <% 
                                                                out.println( domainlist.get(j).username ); 
                                                                %>

                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).fname %>">

                                                                <%out.println( domainlist.get(j).fname );%>

                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).lname %>">

                                                                <% 
                                                                out.println( domainlist.get(j).lname ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).email %>">

                                                                <% 
                                                                out.println( domainlist.get(j).email ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).pass ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <label for="img" class="add"> 
                                                                   <img src="images/edit.png" id="img" width="20px" height="20px">
                                                                </label>
                                                       </td>
                                                       <td>
                                                                <label for="img" class="add1"> 
                                                                   <img src="images/delete.png" id="img" width="20px" height="20px">
                                                                </label>
                                                       </td>
                                                        </tr>
                                                        <% j++;} %>




                                                    </tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script>
            var temp=0;
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
               $('.add').click(function(e)
                {
               // alert("The Domain Added to Cart!");
               temp=1; 
                });
                $('.add1').click(function(e)
                {
               // alert("The Domain Added to Cart!");
               temp=2; 
                });
                $("#usama").on("click", "tr", function usama(e) {
                    
                     if(temp==1){  
                         temp=0;
                         var row = $(this).find('td:first').text();
                        window.location = '/expireddomain/updateuser.jsp?id='+row;  
                }
                else if (temp==2)
                {
                    var row = $(this).find('td:first').text();
                    window.location = '/expireddomain/deleteuser.jsp?id='+row;
                }
                       // var headerVal = $this.closest( "table" ).find( "thead > tr > td" ).eq( cellIndex ).html();
                  
                    temp=0
                    //alert("naya");
                  // alert(e.delegateTarget.tHead.rows[2].cells[this.cellIndex].toString()); 
                   
                });
                
	</script>
    </body>
</html>
