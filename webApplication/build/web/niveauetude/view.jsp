<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>Niveau d'étude</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
        <div class="content">
            <label for="nom">Nom</label> : <bean:write name="NiveauEtudeBean" property="nom"/>
            <br/><br/>
            <a href="<%=application.getContextPath()%>/niveauetude.do?action=lister"><img src="<%=application.getContextPath()%>/assets/imgs/list.png" /> Liste des niveaux d'études</a>
        </div>
    </body>
</html:html>  