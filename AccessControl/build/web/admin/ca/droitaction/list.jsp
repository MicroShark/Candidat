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
            <h1 class="titreBleu">Liste des actions par domaine</h1>
            <table>
                <thead>
                    <tr>
                        <th>Domaine</th>
                        <th style="min-width: 320px;">Libellé de l'action</th>
                        <th>Code de l'action</th>
                        <th class="colAction">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                <logic:iterate name="DroitAction" id="action" >
                    <tr>
                        <bean:define id="domaine" name="action" property="domaine" />
                        <td><bean:write name="domaine" property="nom" /></td>
                        <td><bean:write name="action" property="nom" /></td>
                        <td><bean:write name="action" property="code" /></td>
                        <td class="colAction"><a href="<%=application.getContextPath() %>/droitaction.do?action=modifier&code=${action.code}"><img src="<%=application.getContextPath() %>/admin/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/droitaction.do?action=supprimer&code=${action.code}"><img src="<%=application.getContextPath() %>/admin/assets/imgs/trash.png"></a></td>
                    </tr>
                </logic:iterate>
                </tbody>
            </table>
            <br />
            <a href="<%=application.getContextPath() %>/droitaction.do?action=creer"><img src="<%=application.getContextPath() %>/admin/assets/imgs/add.png" /> Ajouter une action</a><br/>
            <a href="<%=application.getContextPath() %>/droitdomaine.do?action=lister"><img src="<%=application.getContextPath() %>/admin/assets/imgs/list.png" /> Liste des domaines</a>
        </div>
    </body>
</html:html>
