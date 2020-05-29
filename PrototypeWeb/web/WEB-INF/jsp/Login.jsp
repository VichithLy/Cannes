<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="fr">
    
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Connexion</title>    
        <link href="${CSS}body.css" rel="stylesheet" />
        <link href="${CSS}login.css" rel="stylesheet" />
        
    </head>
    
    <body>

        <%@include file="header.jsp"%>
        
        <!-- Conteneur principal -->
        <main role="main" class="container">
            
            <!-- Affichage erreur si mdp ou identifiant incorrect -->
            <%
            if(session.getAttribute("message")!=null){
            %>
                    <%@include file="erreurMsg.jsp"%>
            <%        
                }
            %>
            
            <div class="h1"> 
                <h1>Espace membre</h1>
            </div>
            
            <!-- Formulaire de connexion -->
            <div class="form-group">
                <form:form method = "POST" action = "/PrototypeWeb/connexion" >
                    <form:label path = "identifiant">Nom d'utilisateur :<form:input class="form-control" path ="identifiant"/></form:label><br>
                    <form:label path = "passe">Mot de passe :<form:password class="form-control" path = "passe" /></form:label><br>   
                    <div>
                    <input class="btn btn-secondary btn-sm" type="submit" value="Connexion"/> 
                    </div>
                </form:form>      
                <a href="loginoubli" class="btn btn-link">Mot de passe oublié?</a>
            </div>
                
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