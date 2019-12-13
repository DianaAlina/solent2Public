<%-- 
    Document   : messagesPage
    Created on : 13-Dec-2019, 10:55:39
    Author     : 3rafad60
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="org.solent.com504.project.impl.webclient.WebClientObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 20);

    // accessing service 
    ServiceFacade serviceFacade = (ServiceFacade) WebClientObjectFactory.getServiceFacade();

    // accessing request parameters
    String actionStr = request.getParameter("action");

    // basic error checking before making a call
    if (actionStr == null || actionStr.isEmpty()) {
        // do nothing

    } else if ("XXX".equals(actionStr)) {
        // put your actions here
    } else {
        errorMessage = "ERROR: page called for unknown action";
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Worker Page to Send Messages</title>
    </head>
    <body>
        <!-- works with http://localhost:8080/basicfacadeweb/.... -->
        <H1>Client JSP Page to Send Messages</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>

        <p>The time is: <%= new Date().toString()%> (note page is auto refreshed every 20 seconds)</p>

        <p>Getting heartbeat message: <%= serviceFacade.getHeartbeat()%> (note message is auto refreshed every 20 seconds)</p>
        <div>
            <button type="button" id="startWork" style="">Start Working with Client</button>
            <button type="button" id="Ok">I'm OK</button>
            <button type="button" id="leaving">I am leaving Client Home</button>
        </div>
    </body>
</html>
