<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>

<html:html>
    <head>
        <title>Liste des portes ouvertes</title>
        <%@include file="/commun/head.jsp" %>
    </head>
    <body>

        <%@include file="/commun/banner.jsp" %>

        <%@include file="/commun/menu.jsp" %>

        <div class="content">      

            <h1>Portes Ouvertes</h1>
            <table>
                <thead>
                <td> Nom </td>
                <td> Date </td>
                </thead>
                <tbody>
                    <logic:iterate name="POList" id="PO" >
                        <tr>
                            <td><bean:write name="PO" property="nom" /></td>
                            <td><bean:write name="PO" property="date" format="dd/mm/yyyy" /></td>
                            <td class="colAction"><a href="<%=application.getContextPath() %>/porteouv.do?action=modifier&id=${PO.id}"><img src="<%=application.getContextPath() %>/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/porteouv.do?action=supprimer&id=${PO.id}"><img src="<%=application.getContextPath() %>/assets/imgs/trash.png"></a></td>
                        </tr>
                    </logic:iterate>
                </tbody>
            </table>
            <a href="<%=application.getContextPath()%>/porteouv.do?action=creer"><img src="<%=application.getContextPath()%>/assets/imgs/add.png" /> Ajouter une porte ouverte</a><br/>
            <br/>
        </div>
    </body>
</html:html>
