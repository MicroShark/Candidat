<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>Salon</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
        <div class="content">
            <h1>Nouveau Salon</h1>

            <html:form action="salon.do?action=sauver" >
                <label for="nom">Nom</label> : <html:text name="SalonBean" property="nom" style="width:300px"/><br/>
                <label for="lieu">Lieu</label> : <html:text name="SalonBean" property="lieu" style="width:300px" /><br/>
                <label for="datedeb">Date de début</label> : <html:text name="SalonBean" property="dateDebTxt" style="width:300px"/> <br/>
                <label for="datefin">Date de fin</label> : <html:text name="SalonBean" property="dateFinTxt" style="width:300px"/><br/>
                <html:submit property="submit" value="Valider"/>
                <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/salon.do?action=lister'"/>
            </html:form><br/>
        </div>
    </body>
</html:html>             