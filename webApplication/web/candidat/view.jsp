<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>


<html:html>
    <head>
        <title>Candidats</title>
        <%@ include file="/commun/head.jsp" %>
    </head>
    <body>
        <%@ include file="/commun/banner.jsp" %>
        <%@ include file="/commun/menu.jsp" %>
        <div class="content">
            <h1>Liste des candidats</h1>
            <html:form action="candidat.do?action=sauver">
                Civilité: <bean:write name="CandidatBean" property="civil"  /><br/> 
                Nom: <bean:write name="CandidatBean" property="nom"  /><br/>
                Prenom: <bean:write name="CandidatBean" property="prenom"  /><br/>
                Date de Naissance: <bean:write name="CandidatBean" property="datenaiss"  /><br/>
                Code postal: <bean:write name="CandidatBean" property="cp"  /><br/>
                Ville: <bean:write name="CandidatBean" property="ville"  /><br/>
                Adresse: <bean:write name="CandidatBean" property="adresse"  /><br/>
                Nationalité: <bean:write name="CandidatBean" property="nat"  /><br/>
                Téléphone: <bean:write name="CandidatBean" property="telephone" /><br/>
                Email: <bean:write name="CandidatBean" property="email" /><br/>
                Niveau d'études: <bean:write name="CandidatBean" property="niveau" /><br/>
                Specialité: <bean:write name="CandidatBean" property="spec" /><br/>
                
                Inscrit aux portes ouvertes du: <bean:write name="CandidatBean" property="datepo" /><br/>

            </html:form>
            <br/>
            <a href="<%=application.getContextPath()%>/candidat.do?action=lister"><img src="<%=application.getContextPath()%>/assets/imgs/list.png" /> Liste des candidats</a>
        </div>
    </body>
</html:html>