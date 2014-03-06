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
            <h1 class="titreBleu">Liste des domaines</h1>
            <table>
                <thead>
                    <tr>
                        <th>Code</th>
                        <th style="min-width: 320px;">Libellé</th>
                        <th class="colAction">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                <logic:iterate name="DroitDomaines" id="Domaine" >
                    <tr>
                        <td><bean:write name="Domaine" property="code" /></td>
                        <td><bean:write name="Domaine" property="nom" /></td>
                        <td class="colAction"><a href="<%=application.getContextPath() %>/droitdomaine.do?action=modifier&code=${Domaine.code}"><img src="<%=application.getContextPath() %>/admin/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/droitdomaine.do?action=supprimer&code=${Domaine.code}"><img src="<%=application.getContextPath() %>/admin/assets/imgs/trash.png"></a></td>
                    </tr>
                </logic:iterate>
                </tbody>
            </table>
            <br />
            <a href="<%=application.getContextPath() %>/droitdomaine.do?action=creer"><img src="<%=application.getContextPath() %>/admin/assets/imgs/add.png" /> Ajouter un domaine</a>
            <br/>
            <a href="<%=application.getContextPath() %>/droitaction.do?action=lister"><img src="<%=application.getContextPath() %>/admin/assets/imgs/list.png" /> Liste des actions par domaine</a>
        </div>
    </body>
</html:html>
