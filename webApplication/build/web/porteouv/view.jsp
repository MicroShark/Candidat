<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>Portes Ouvertes</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
        <div class="content">
            <h1>Porte ouverte</h1>

            <html:form action="porteouv.do?action=sauver" >
                Nom : <bean:write name="PorteOuvBean" property="nom"  /><br/>
                Date: <bean:write name="PorteOuvBean" property="dateTxt" /><br/>
            </html:form>
            <br/>
            <a href="<%=application.getContextPath() %>/porteouv.do?action=lister"><img src="<%=application.getContextPath() %>/assets/imgs/list.png" /> Liste des portes ouvertes</a>
        </div>
    </body>
</html:html>