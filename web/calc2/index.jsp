<%-- 
    Document   : index
    Created on : Jan 28, 2015, 12:41:01 PM
    Author     : mdufek1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rectangle Area Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<%= request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <nav class="navbar	navbar-default	navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">Mike</a>

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
                            </ul>
                    </ul>

                </div>
            </div>
        </nav>
        <form id="calc1form" name="calc1form" method="POST" action=<%= request.getContextPath()%>/calculate2>
              <label for="width">Width:</label><input type="number" name="width" id="width" value="" />
            <label for="height">Height:</label><input type="number" name="height" id="height" value="" />
            <input type="submit" name="submit" id="submit" value="Submit" />
            <%
                // the getAttribute method returns a plain object, not a String or other type
                Object returnArea = request.getAttribute("area");
                String message = null;
                // cannot cast if null
                if (returnArea == null) {
    // do something so program doesn't crash, like
                    // here we create a list with an error message
                    returnArea = "";
                } else {
                    // cast it
                    returnArea = (String) returnArea;
                }
                out.print("<center><h1>" + returnArea + "</h1></center>");

// THIS CODE IS OVERLY COMPLICATED and FRAGILE!!!
                // See result2.jsp for a better way
%>
        </form>
        <script src="<%= request.getContextPath()%>/js/jquery-1.10.2.min.js"></script>
        <script src="<%= request.getContextPath()%>/js/bootstrap.min.js"></script>
    </body>
</html>

