<%-- 
    Document   : formAddAppointment
    Created on : 15-Jan-2020, 21:37:35
    Author     : 3rafad60
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>
<%@page import="org.solent.com504.project.impl.dao.jpa.PersonDAOJpaImpl" %>
<%@page import="org.solent.com504.project.model.dao.PersonDAO" %>
<%@page import="org.solent.com504.project.model.dto.Person" %>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 60);

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Appointment JSP Server Page</title>
    </head>
    <body>
        <!-- works with http://localhost:8080/basicfacadeweb/testHeartbeat.jsp -->
        <H1>Create an appointment</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>
        <br><br>
        <form>
            <input type="text" placeholder="Description"/><br>
            <input type="text" placeholder="Person A"/><br>
            <input type="text" placeholder="Person B"/><br>
            <input type="text" placeholder="ID"/><br>
            <input type="Submit" value="Add"/>
        </form>
        

    </body>
</html>
