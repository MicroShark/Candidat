<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html:html>
    <head>
        <title>CANDIDAT</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
        <div class="content">
            <h1>Candidat</h1>

            <html:form action="candidat.do?action=sauver" >
                <label for="civil">Civil</label> : <html:text name="CandidatBean" property="civil"  /><br/>
                <label for="nom">Nom</label> : <html:text name="CandidatBean" property="nom"  /><br/>
                <label for="prenom">Prénom</label> : <html:text name="CandidatBean" property="prenom" /><br/>
                <label for="datenaiss">Date de naissance</label> : <html:text name="CandidatBean" property="datenaiss"  /><br/>
                <label for="cp">Code Postal</label> : <html:text name="CandidatBean" property="cp"  /><br/>
                <label for="ville">Ville</label> : <html:text name="CandidatBean" property="ville" /><br/>
                <label for="adresse">Adresse</label> : <html:text name="CandidatBean" property="adresse"  /><br/>
                <label for="nat">Nationalité</label> : <html:text name="CandidatBean" property="nat"  /><br/>
                <label for="telephone">Téléphone</label> : <html:text name="CandidatBean" property="telephone"  /><br/>
                <label for="email">Email</label> : <html:text name="CandidatBean" property="email" /><br/>
                <label for="niveau">Niveau d'Etudes</label> : 
                    <html:select name="CandidatBean" property="niveau">
                    <logic:iterate name="NiveauEtudeBeans" id="nivetude">
                        <html:option value ="${nivetude.id}">${nivetude.nom}</html:option>
                    </logic:iterate></html:select>
                    <br/>
                <label for="spec">Spécialité</label> : <html:text name="CandidatBean" property="spec" /><br/>
                <label for="datepo">Date Porte Ouverte</label> : <html:text name="CandidatBean" property="datepo"  /><br/>
                <html:submit property="submit" value="Valider"/>
                <html:button property="annuler" value="Annuler" onclick="document.location.href='${pageContext.request.contextPath}/candidat.do?action=lister'"/>
            </html:form><br/>
        </div>
    </body>
</html:html>        
