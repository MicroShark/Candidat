<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>

<html:html>
    <head>
        <title>Liste des Niveau d'études</title>
        <%@include file="/commun/head.jsp" %>
    </head>
    <body>

        <%@include file="/commun/banner.jsp" %>

        <%@include file="/commun/menu.jsp" %>

        <div class="content">      

            <table>
                <thead>
                <td> Nom </td>
                
                </thead>
                <tbody>
                    <logic:iterate name="NEList" id="NElistId" >
                        <tr>
                            <td><html:link href="/${application.getContextPath()}/niveauetude.do?action=afficher&id=${NElistId.id}" ><bean:write name="NElistId" property="nom" /></html:link></td>
                            <td class="colAction"><a href="<%=application.getContextPath() %>/niveauetude.do?action=modifier&id=${NElistId.id}"><img src="<%=application.getContextPath() %>/assets/imgs/modif.png"></a> - 
                                                  <a href="<%=application.getContextPath() %>/niveauetude.do?action=supprimer&id=${NElistId.id}"><img src="<%=application.getContextPath() %>/assets/imgs/trash.png"></a></td>                        
                            </tr>
                    </logic:iterate>
                </tbody>
            </table>
            <a href="<%=application.getContextPath()%>/niveauetude.do?action=creer"><img src="<%=application.getContextPath()%>/assets/imgs/add.png" /> Ajouter un niveau d'étude</a><br/>
            <br/>
        </div>
    </body>
</html:html>
