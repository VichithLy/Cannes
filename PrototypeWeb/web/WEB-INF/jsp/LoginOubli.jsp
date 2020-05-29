<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="fr">
    
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Mot de passe oublié</title>
        <link href="${CSS}body.css" rel="stylesheet" />
        <link href="${CSS}login.css" rel="stylesheet" />
    </head>
    
    <body>
        <%@include file="header.jsp"%>
        
        <!-- Conteneur principal -->
        <main role="main" class="container">
            
            <div class="h2"
                <h1>Mot de passe oublié?</h1><br>
            </div>
             
            <!-- Formulaire de mot de passe oublié -->
            <div class="form-group"> 
                <form>
                    <label>Nom d'utilisateur : <input class="form-control" type="text"></label><br>
                    <label>Adresse mail : <input class="form-control" type="email"></label><br>
                    <input class="btn btn-secondary btn-sm" type="submit" value="Envoyer">
                </form>             
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