<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>

<html:html>
    <head>
        <title>Creation et modification d'une formation</title>
        <%@include file="/commun/head.jsp" %>
    </head>
    <body>

        <%@include file="/commun/banner.jsp" %>

        <%@include file="/commun/menu.jsp" %>

        <div class="content">
            
            <html:form action="insee.do?action=sauver">
                <label for="nom">Nom :</label> <html:text name="INSEEBean" property="nom" style="width:200px"/><br/><br/><br/>
             <html:submit property="submit" value="Valider" /> 
             <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/insee.do?action=lister'"/>
            </html:form>

        </div>
    </body>
</html:html>