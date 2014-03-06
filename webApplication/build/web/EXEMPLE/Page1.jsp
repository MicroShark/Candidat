<%-- 
    Document   : Page1
    Created on : 6 févr. 2014, 15:46:50
    Author     : User
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Etape 1 / 3</title>
        <html:base/>
    </head>
    <body>
        <h1>Saisie des information Etape 1</h1>
        <html:form action="/Page1.do">
            Nom : <html:text name="person" property="ename" /><br/>
            Travail : <html:text name="person" property="job" /><br/>
            <html:submit value="Ok" />
        </html:form>
    </body>
</html:html>
