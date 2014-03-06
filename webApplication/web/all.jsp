<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
    <head>
        <title>Pré-inscription candidats</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/resets.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style2.css">
    </head>
    <body>
        
        <header><img src="assets/imgs/hitema_banner.jpg" style="width:100%;height:100%"></header>
        
        <c:import url="/public/fix/menu.jsp" />
    
        <div class="content">
            
            <c:import url="/public/content/login.jsp" />
            <c:import url="/public/content/candidat_form.jsp" />
            <c:import url="/public/content/candidat_list.jsp" />
            <c:import url="/public/content/po_form.jsp" />
            <c:import url="/public/content/po_list.jsp" />
 
            <c:import url="/public/content/salon_form.jsp" />
            <c:import url="/public/content/salon_list.jsp" />
    
        </div>
    </body>
</html>