<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>


    <html:html>
    <head>
        <title>Formations</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
<h1>Formation</h1>
<html:form action="insee.do?action=lister">
    
       Nom : <bean:write name="INSEEBean" property="nom"/>
        <br/>
        <html:submit property="submit" value="Retour à la liste"/>
    
</html:form>
    </body>
    </html:html>