<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<!DOCTYPE html>
    <head>
        <title>Liste des candidats</title>
        <%@include file="/commun/head.jsp" %>
    </head>
    <body>
       
        <%@include file="/commun/banner.jsp" %>

        <%@include file="/commun/menu.jsp" %>
        <div class="content">    
<h1>CANDIDAT</h1>

<table>
    <thead>
         <td> Nom </td>
    </thead>
    <tbody>
    <logic:iterate name="CandidatList" id="candidat">
        <tr>
            <td><html:link href="/${application.getContextPath()}/candidat.do?action=afficher&id=${candidat.id}" ><bean:write name="candidat" property="nom" /></html:link></td>
            <td class="colAction"><a href="<%=application.getContextPath() %>/candidat.do?action=modifier&id=${candidat.id}"><img src="<%=application.getContextPath() %>/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/candidat.do?action=supprimer&id=${candidat.id}"><img src="<%=application.getContextPath() %>/assets/imgs/trash.png"></a></td>
        </tr>
    </logic:iterate>
    </tbody>
</table>
<a href="<%=application.getContextPath()%>/candidat.do?action=creer"><img src="<%=application.getContextPath()%>/assets/imgs/add.png" /> Ajouter un candidat</a><br/>
<br />
        </div>
</html:html>

