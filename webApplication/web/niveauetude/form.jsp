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
            <h1>Niveau d'étude</h1>

            <html:form action="niveauetude.do?action=sauver" >
                <label for="nom">Nom</label> : <html:text name="NiveauEtudeBean" property="nom"  /><br/>
                <html:submit property="submit" value="Valider"/>
                <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/niveauetude.do?action=lister'"/>
            </html:form><br/>
        </div>
    </body>
</html:html>           