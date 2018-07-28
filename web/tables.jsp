<%-- 
    Document   : tables
    Created on : Aug 21, 2016, 4:43:24 PM
    Author     : Usama Jamil
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controller.edomains"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String name = (String) session.getAttribute("username");%>
<jsp:useBean id="obj" class="model.adminedomainsmodel"/> 
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
                        <li><a href="index.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> DashBoard</a></li>
			<li class="active"><a href="tables.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Domains</a></li>
			<li><a href="charts.jsp"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Charts</a></li>
			<li><a href="panels.jsp"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg> Alerts &amp; Panels</a></li>
			</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="index.jsp"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
                <BR>
                <form action="forms.jsp">
                <div align="right">
		<button type="submit" id="mkrnaqeebi" class="btn btn-primary" >Mass Delete</button>
                <button type="submit" class="btn btn-primary" >Add New Domain</button>
                </div>
                </form>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div><!--/.row-->
				
		
                 <%
               
            
            String age=request.getParameter("age");
            String gender=request.getParameter("gender");
            List<edomains> domainlist=new ArrayList();
           
            domainlist=obj.getAllDomains();
        
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
						        <th>Id</th>
                                                        <th>url</th>
                                                        <th>Linked</th>
                                                        <th>Alexa</th>
                                                        <th>DA</th>
                                                        <th>MR</th>
                                                        <th>ML</th>
                                                        <th>FB</th>
                                                        <th>Google+1</th>
                                                        <th>Linked In</th>
                                                        <th>Pinterest</th>
                                                        <th>WayBack</th>
                                                        <th>Dmoz</th>
						        <th data-field="price" data-sortable="true">Item Price</th>
                                                                                                      
						    </tr>
						    </thead>
                                                    <tbody id="simple">

                                                        <% j=0;
                                                        while(j<domainlist.size())
                                                       {
                                                        %>
                                                    <tr>
                                                        <td data-search="<%=domainlist.get(j).id %>">

                                                                <% 
                                                                out.println( domainlist.get(j).id ); 
                                                                %>

                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).url %>">

                                                                <%out.println( domainlist.get(j).url );%>

                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).linked %>">

                                                                <% 
                                                                out.println( domainlist.get(j).linked ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).alexa %>">

                                                                <% 
                                                                out.println( domainlist.get(j).alexa ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).DA ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).MR ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).ML ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).FB ); 
                                                                %>
                                                        </td>
                                                        <td>
                                                                <% 
                                                                out.println( domainlist.get(j).google ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).linkedin %>">
                                                                <% 
                                                                out.println( domainlist.get(j).linkedin ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).pinterest %>">
                                                                <% 
                                                                out.println( domainlist.get(j).pinterest ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).Dmoz %>">
                                                                <% 
                                                                out.println( domainlist.get(j).Dmoz ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).wayback %>">
                                                                <% 
                                                                out.println( domainlist.get(j).wayback ); 
                                                                %>
                                                        </td>
                                                        <td data-search="<%=domainlist.get(j).price %>" >
                                                                <% 
                                                                out.println( domainlist.get(j).price ); 
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
                                                       <td class="bs-checkbox">
                                                           <input name="<%=domainlist.get(j).id %>" type="checkbox">
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
                $('#mkrnaqeebi').click(function(event){
                    event.preventDefault();
                    var arr = [];
                    $('#simple tr .bs-checkbox input').each(function () {
                            if(this.checked){
                                arr.push(this.name.toString());
                            }
                    });
                    window.location = '/expireddomain/massDelete.jsp?id='+arr.toString();
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
                        window.location = '/expireddomain/update.jsp?id='+row;  
                }
                else if (temp==2)
                {
                    var row = $(this).find('td:first').text();
                    window.location = '/expireddomain/delete.jsp?id='+row;
                }
                       // var headerVal = $this.closest( "table" ).find( "thead > tr > td" ).eq( cellIndex ).html();
                  
                    temp=0;
                    //alert("naya");
                  // alert(e.delegateTarget.tHead.rows[2].cells[this.cellIndex].toString()); 
                   
                });
                
	</script>
    </body>
</html>
