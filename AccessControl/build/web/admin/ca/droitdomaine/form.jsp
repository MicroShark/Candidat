<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>Contrôle d'accès - Droit sur les domaines</title>
        <%@ include file="/admin/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/admin/commun/banner.jsp" %>
        <%@ include file="/admin/commun/menu.jsp" %>
        <div class="content">
            <html:form action="droitdomaine.do?action=sauver" >
                <fieldset>
                    <label for="code">Code :</label><html:text property="code" name="DroitDomaineBean" /><br/>
                    <label for="nom">Libellé  :</label><html:text property="nom" name="DroitDomaineBean"/><br/>
                    <html:submit property="submit" value="Valider"/>
                    <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/droitdomaine.do?action=lister'"/>
                </fieldset>
            </html:form>
        </div>
    </body>
</html:html>     