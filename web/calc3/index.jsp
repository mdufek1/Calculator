<%-- 
    Document   : index
    Created on : Jan 28, 2015, 12:41:01 PM
    Author     : mdufek1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Multi-Shape Area Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<%= request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    </head>
    <body>

        <nav class="navbar	navbar-default	navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">Mike - Calculator v3</a>

                    <button type="button" class="navbar-toggle" data-toggle="collapse" datatarget="#collapse-menu">
                        <span class="sr-only">Toggle	navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse	navbar-collapse pull-left" id="collapse-menu">
                    <ul class="nav	navbar-nav navbar-right">
                        <li><a href="<%= request.getContextPath()%>/index.html">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Calculators<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<%= request.getContextPath()%>/calc1/index.jsp">Calculator v1</a></li>
                                <li><a href="<%= request.getContextPath()%>/calc2/index.jsp">Calculator v2</a></li>
                                <li><a href="<%= request.getContextPath()%>/calc3/index.jsp">Calculator v3</a></li>
                                <li><a href="<%= request.getContextPath()%>/calc4/index.jsp">Calculator v4</a></li>
                            </ul>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">

                <div class="col-md-4">
                    <table id="rectContent"> 
                        <form id="rect" name="rect" method="POST" action=<%= request.getContextPath()%>/calculate3?shape=rectangle>
                              <tr><td colspan="2"><h1>Rectangle Area:</h1></td></tr>
                            <tr><td><label for="width">Width:</label></td><td><input type="number" name="width" id="width" value="" /></td></tr>
                            <tr><td><label for="height">Height:</label></td><td><input type="number" name="height" id="height" value="" /></td></tr>
                            <tr colspan="2"><td><input type="submit" name="submit" id="submit" value="Submit" /></td></tr> 
                        </form>
                    </table> 
                </div>
                <div class="col-md-4">
                    <table  id="triContent">  
                        <form id="triangle" name="triangle" method="POST" action=<%= request.getContextPath()%>/calculate3?shape=triangle>
                              <tr><td colspan="2"><h1>Triangle Area:</h1></td></tr>
                            <tr><td><label for="base">Base:</label></td><td><input type="number" name="base" id="basez   " value="" /></td></tr>
                            <tr><td><label for="triHeight">Height:</label></td><td><input type="number" name="triHeight" id="triHeight" value="" /></td></tr>
                            <tr colspan="2"><td><input type="submit" name="submit" id="submit" value="Submit" /></tr></td>
                        </form>
                    </table> 
                </div>                      
                <div class="col-md-4">
                    <table id="circContent"> 
                        <form id="circle" name="circle" method="POST" action=<%= request.getContextPath()%>/calculate3?shape=circle>
                              <tr><td colspan="2" rowspan="2"><h1>Circle Area:</h1></td></tr>
                            <tr><td><p> </p></td></tr>
                            <tr><td><label for="radius">radius:</label></td><td><input type="number" name="radius" id="radius" value=""></td></tr>
                            <tr colspan="2"><td><input type="submit" name="submit" id="submit" value="Submit" /></td></tr>
                        </form>            
                    </table>
                </div>
            </div>
        </div>
        <%

            Object returnArea = request.getAttribute("area");
            String message = null;
            if (returnArea == null) {
                returnArea = "";
            } else {
                returnArea = (String) returnArea;
            }
            out.print("<center><h1>" + returnArea + "</h1></center>");
        %>
        <script src="<%= request.getContextPath()%>/js/jquery-1.10.2.min.js"></script>
        <script src="<%= request.getContextPath()%>/js/bootstrap.min.js"></script>
    </body>
</html>

