<%-- 
    Document   : liste
    Created on : 6 févr. 2014, 17:13:05
    Author     : User
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste</title>
    </head>
    <body>
        <h1>Liste des employés !</h1>
        <table border="1" style="margin: 5px">
            <tr><td style="padding: 3px">Nom</td>
                <td style="padding: 3px">Travail</td>
                <td style="padding: 3px">Commission</td>
                <td style="padding: 3px">Date</td>
                <td style="padding: 3px">Département</td></tr>
                <logic:iterate name="allPerson" id="person">   
                    <tr><td style="padding: 3px"><html:link href="Page0.do?id=${person.empno}"><bean:write name="person" property="ename" /></html:link></td>
                        <td style="padding: 3px"><bean:write name="person" property="job" /></td>
                        <td style="padding: 3px; text-align: right"><bean:write name="person" property="comm" format="# ##0" /></td>
                        <td style="padding: 3px"><bean:write name="person" property="hiredate" format="dd/mm/yyyy" /></td>
                        <td style="padding: 3px"><bean:write name="person" property="dept.dname" format="dd/mm/yyyy" /></td></tr>
                </logic:iterate>
        </table>
        <br />
        <html:link href="Page0.do">Nouvel employé</html:link>
    </body>
</html>
