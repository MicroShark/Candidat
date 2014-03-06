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
        
        <bean:define id="Domaine" name="DroitActionBean" property="domaine" />
        <div class="content">
            <label>Code</label> : ${DroitActionBean.code}<br/>
            <label>Libellé</label>  : ${DroitActionBean.nom}<br/>
            <label>Domaine</label>  : ${Domaine.nom}<br/>
            <br />
            <html:link href="${pageContext.request.contextPath}/droitaction.do?action=lister"><html:img src="${pageContext.request.contextPath}/admin/assets/imgs/list.png" /> Retour à la liste</html:link>
        </div>
    </body>
</html:html>