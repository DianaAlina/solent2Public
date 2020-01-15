<%-- 
    Document   : formAddAppointment
    Created on : 15-Jan-2020, 21:37:50
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
        <title>Add Person JSP Server Page</title>
    </head>
    <body>
        <!-- works with http://localhost:8080/basicfacadeweb/testHeartbeat.jsp -->
        <H1>Add Person</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>
        
        <form>
            <input type="text" id="id" placeholder="ID"/><br>
            <input type="text" id="firstName" placeholder="First Name"/><br>
            <input type="text" id="secondName" placeholder="Second Name"/><br>
            <input type="text" id="staffId" placeholder="Staff ID"/><br>
            <input type="text" id="role" placeholder="Role"/><br>
            <input type="text" id="address" placeholder="Address"/><br>
            <input type="submit" value="Add"/>
        </form>

    </body>
</html>
