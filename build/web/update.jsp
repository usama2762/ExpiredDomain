<%-- 
    Document   : forms
    Created on : Aug 21, 2016, 4:57:12 PM
    Author     : Usama Jamil
--%>
<%@page import="controller.edomains"%>
<% String st  = (String) request.getParameter("id");%>
<jsp:useBean id="obj" class="model.geteditdomain"/>
<jsp:useBean id="obj1" class="model.update"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    RequestDispatcher rd;
    String id=request.getParameter("passid");
    String url=request.getParameter("url");
    String linked=request.getParameter("linked");
    String alexa=request.getParameter("alexa");
    String DA=request.getParameter("DA");
    String MR=request.getParameter("MR");
    String ML=request.getParameter("ML");
    String FB=request.getParameter("FB");
    String go=request.getParameter("go");
    String lin=request.getParameter("lin");
    String pin=request.getParameter("pin");
    String dmoz=request.getParameter("dmoz");
    String wayback=request.getParameter("wayback");
    String price=request.getParameter("price");
    int a=0,c=0,d=0,e=0,f=0,g=0,h=0,i=0,j=0,k=0,m=0;
    float n=5;
    boolean l=false;
    if(id!=null){
             a = Integer.parseInt(id.trim());
    }
    if(linked!=null && linked!="null"){
             c = Integer.parseInt(linked.trim());
    }
    if(alexa!=null && alexa!="null"){
             d = Integer.parseInt(alexa.trim());
    }
    if(DA!=null  && DA!="null"){
             e = Integer.parseInt(DA.trim());
    }
    if(MR!=null && MR!="null"){
             f = Integer.parseInt(MR.trim());
    }
    if(ML!=null && ML!="null"){
             g = Integer.parseInt(ML.trim());
    }
    if(FB!=null && FB!="null"){
             h = Integer.parseInt(FB.trim());
    }
    if(go!=null && go!="null"){
             i = Integer.parseInt(go.trim());
    }
    if(lin!=null && lin!="null"){
             j = Integer.parseInt(lin.trim());
    }
    if(pin!=null && pin!="null"){
             k = Integer.parseInt(pin.trim());
    }
    if(dmoz!=null){
            if(dmoz=="false")
                l=false;
            else
                l=true;
    }
    if(wayback!=null && wayback!="null"){
             m = Integer.parseInt(wayback.trim());
    }
    if(price!=null && price!="null"){
             n = Float.parseFloat(price);
    }
    
    if(url!=null)
    {
        obj1.update(a, url, c, d, e, f, g, h, i, j, k, l, m, n);
        rd = request.getRequestDispatcher("tables.jsp");
        rd.forward(request,response);
    }
    
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Expired Domeins</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles3.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
    </head>
    <body>
        <%
               
            
            String age=request.getParameter("age");
            String gender=request.getParameter("gender");
            edomains domain=new edomains();
            int integer=0 ;
            if(st!=null){
            integer = Integer.parseInt(st.trim());
            }
            //id=130;
            domain=obj.getDomainbyID(integer);
        
           

            %>
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
                    
			
			<li><a href="tables.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Back</a></li>
			<li  class="active"><a href="#"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg>Udate Page</a></li>
			</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="index.jsp"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Forms</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Form Elements</div>
					<div class="panel-body">
						<div class="col-md-6">
							<form role="form">
							
								<div class="form-group">
									<label>URL</label>
                                                                        <input name="url" class="form-control" placeholder="url" value="<%out.println(domain.url); %>">
                                                                        <label>Linked</label>
                                                                        <input name="linked" class="form-control" placeholder="linked" value="<%out.println(domain.linked); %>">
                                                                        <label>Alexa</label>
									<input name="alexa" class="form-control" placeholder="alexa" value="<%out.println(domain.alexa ); %>">
                                                                        <label>DA</label>
									<input name="DA"  class="form-control" placeholder="DA" value="<%out.println(domain.DA); %>">
                                                                        <label>MR</label>
									<input name="MR" class="form-control" placeholder="MR" value="<%out.println(domain.MR); %>">
                                                                        <label>ML</label>
									<input name="ML" class="form-control" placeholder="ML" value="<%out.println(domain.ML); %>">
                                                                        <label>FB</label>
									<input name="FB" class="form-control" placeholder="FB" value="<%out.println(domain.FB); %>">
								</div>
																
								
								
								
							</div>
							<div class="col-md-6">
                                                                        <label>Google +1</label>
									<input name="go" class="form-control" placeholder="Google+1" value=<%out.println(domain.google) ;%>>
                                                                        <label>LinkedIn</label>
									<input name="lin" class="form-control" placeholder="LinkedIn" value="<%out.println(domain.linkedin) ; %>">
                                                                        <label>Pinterest</label>
									<input name="pin" class="form-control" placeholder="Pinterest" value="<%out.println(domain.pinterest) ;%>">
                                                                        <label>Dmoz</label>
									<input name="dmoz" class="form-control" placeholder="Dmoz" value="<%out.println(domain.Dmoz ) ;%>">
                                                                        <label>wayback</label>
									<input name="wayback" class="form-control" placeholder="wayback" value="<%out.println(domain.wayback) ; %>">
                                                                        <label>Price</label>
                                                                        <input name="price" class="form-control" placeholder="Price" value="<%out.println(domain.price) ; %>">
                                                                        <BR>
								<button type="submit" class="btn btn-primary">Update Domain Data</button>
								<button type="reset" class="btn btn-default">Reset All Values</button>
                                                                <input name="passid" type="hidden" value="<%=integer%>">
							</div>
						</form>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
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
	</script>	
    </body>
</html>
