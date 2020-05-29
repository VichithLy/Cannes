<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@page import="entities.Vip"%>
<%@page import="accesbase.AccesVip"%>
<!DOCTYPE html>

<html lang="fr">
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Fiche VIP</title>
       
        <link href="${CSS}vipfiche.css" rel="stylesheet" /> 
    </head>
    
    <body>
        
        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>

        <!-- Begin page content -->
        <main role="main" class="container">
            <% if(session.getAttribute("message")!=null){ %>
                    <%@include file="erreurMsg.jsp"%>
            <% } %>
            <div class="h1"> 
                <h1><strong>${vip.getNom().toUpperCase()} ${vip.getPrenom()} #${vip.getIdPersonne()}</strong></h1>
            </div>
            
            <form method="POST" action="/PrototypeWeb/vipmodif">
                <input type="hidden" name="idvip" value="${vip.getIdPersonne()}" />
                <input type="submit" class="btn btn-secondary btn-lg btn-block" value="Modifier"><br>
            </form>
            
            <%--<img src="${IMAGES}profilPics/${vip.getPhoto()}">%--%>
            <img src="${IMAGES}profilPics/profilPic.png" class="profil">
            
            <a href="viprelations?id=${vip.getIdPersonne()}" class="btn btn-link">Gestion relation</a><br>
            <br></br>
            <label><strong>Pays :</strong> ${vip.getPaysVip()} </label><br>
            <br></br>
            <label><strong>Profession :</strong> ${vip.getProfession()} </label><br>
            <br></br>
            <label><strong>Coefficient d'importance :</strong> ${vip.getCoeffImportance()} </label><br>
            <br></br>
            <% 
                AccesVip avip = new AccesVip();
                Vip v = avip.selectVip((((Vip)request.getAttribute("vip")).getIdCompagnon()));
                if(v==null){
                   %>
                   <label><strong>Compagnon :</strong> Numéro incorrect </label><br>
                   <%
                }else{
            %>
            <label><strong>Compagnon :</strong> <%= v.getNom()+" "+v.getPrenom() %> </label><br>

            <% } %>
        </main>
        
        <footer class="footer">
            <%@include file="footer.jsp"%>
        </footer>
        
        <!-- JavaScript mis à la fin pour charger la page plus vite -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                           
    </body>
</html>