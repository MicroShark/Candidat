<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>Contrôle d'accès - Droit sur les actions</title>
        <%@ include file="/admin/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/admin/commun/banner.jsp" %>
        <%@ include file="/admin/commun/menu.jsp" %>
        <div class="content">
            <html:form action="droitaction.do?action=sauver" >
                <fieldset>
                    <label for="code">Code :</label><html:text property="code" name="DroitActionBean" /><br/>
                    <label for="nom">Libellé  :</label><html:text property="nom" name="DroitActionBean"/><br/>
                    <label for="domaineCode">Domaine  :</label>
                    <html:select property="domaineCode">
                          <logic:iterate name="DomaineBeanList" id="domaine" >
                            <html:option value="${domaine.code}">${domaine.nom}</html:option>
                          </logic:iterate>
                    </html:select><br/>
                    <html:submit property="submit" value="Valider"/>
                    <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/droitaction.do?action=lister'"/>
                </fieldset>
            </html:form>
        </div>
    </body>
</html:html>                