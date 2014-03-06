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

            <h1 id="h1_salon">Liste des salons</h1>

            <table>
                <thead>
                    <tr>
                        <td>Nom</td>
                        <td>Lieu</td>
                        <td>Début</td>
                        <td>Fin</td>
                    </tr>
                </thead>
                <tbody>

                    <logic:iterate name="SalonList" id="salonBean">   
                        <tr><td ><bean:write name="salonBean" property="nom" /></td>
                            <td ><bean:write name="salonBean" property="lieu" /></td>
                            <td ><bean:write name="salonBean" property="dateDebTxt" format="dd/mm/yyyy" /></td>
                            <td ><bean:write name="salonBean" property="dateFinTxt" format="dd/mm/yyyy" /></td>
                            
                        <td class="colAction"><a href="<%=application.getContextPath() %>/salon.do?action=modifier&id=${salonBean.id}"><img src="<%=application.getContextPath() %>/assets/imgs/modif.png"></a> - 
                            <a href="<%=application.getContextPath() %>/salon.do?action=supprimer&code=${salonBean.id}"><img src="<%=application.getContextPath() %>/assets/imgs/trash.png"></a></td>
                        </tr>
                        </logic:iterate>
                </tbody>
            </table>    
            <a href="<%=application.getContextPath()%>/salon.do?action=creer"><img src="<%=application.getContextPath()%>/assets/imgs/add.png" /> Ajouter un salon</a><br/>
            <br/>
        </div>
    </body>
</html:html>