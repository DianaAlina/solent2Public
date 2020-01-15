<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 1);

    // accessing service 
    ServiceFacade serviceFacade = (ServiceFacade) WebObjectFactory.getServiceFacade();

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

<html>
    <head>
        <title>Operations Centre Service</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Operations Centre Service</h1>

        <button id="start">Start working with client</button><br>
        <button id="ok">I'm OK</button><br>
        <button id="leave">I'm leaving client home</button><br>
        
        <h3>Timer JSP Server Page</h3>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>

        <p>The time is: <%= new Date().toString()%> (note page is auto refreshed every 1 seconds)</p>

        <p>Getting heartbeat message: <%= serviceFacade.getHeartbeat()%> (note message is auto refreshed every second)</p>

        
        
        <h2>Simple Farm Example</h2>
        <!-- http://localhost:8084/projectfacadeweb/testHeartbeat.jsp -->
        <p> click on <a href="../projectfacadeweb/testHeartbeat.jsp">testHeartbeat.jsp</a> to open application
        </p>
 
        <h1>Rest end points</h1>
        <table>
            <tr><td></td><td><a href="../projectfacadeweb/rest/appointmentService/">http://localhost:8084/projectfacadeweb/rest/appointmentService/</a> </td></tr>
            <tr><td></td><td><a href="../projectfacadeweb/rest/appointmentService/getHeartbeat">http://localhost:8084/projectfacadeweb/rest/appointmentService/getHeartbeat</a> </td></tr>
         </table>


    </body>
</html>
<%-- 
    Document   : index
    Created on : 15-Jan-2020, 20:13:20
    Author     : 3rafad60
--%>

