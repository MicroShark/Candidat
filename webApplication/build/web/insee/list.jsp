<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<!DOCTYPE html>
    <head>
        <title>Liste des portes INSEE</title>
        <%@include file="/commun/head.jsp" %>
    </head>
    <body>
       
        <%@include file="/commun/banner.jsp" %>

        <%@include file="/commun/menu.jsp" %>
        <div class="content">    
<h1>Formations Proposées</h1>

<table>
    <thead>
         <td> Nom </td>
    </thead>
    <tbody>
    <logic:iterate name="INSEEList" id="insee">
        <tr>
            <td><a href="<%=application.getContextPath() %>/insee.do?action=afficher&id=${insee.id}" ><bean:write name="insee" property="nom" /></a></td>
            <td class="colAction"><a href="<%=application.getContextPath() %>/insee.do?action=modifier&id=${insee.id}"><img src="<%=application.getContextPath() %>/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/insee.do?action=supprimer&id=${insee.id}"><img src="<%=application.getContextPath() %>/assets/imgs/trash.png"></a></td>
        </tr>
    </logic:iterate>
    </tbody>
</table>
<a href="<%=application.getContextPath()%>/insee.do?action=creer"><img src="<%=application.getContextPath()%>/assets/imgs/add.png" /> Ajouter une INSEE</a><br/>
<br />
        </div>
</html:html>
