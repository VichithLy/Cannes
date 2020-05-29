<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page isELIgnored = "false" %>
<%@taglib prefix = "form" uri = "http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="config.jsp"%>
        <title>Erreur 404</title>
        <link href="${CSS}erreur.css" rel="stylesheet" />
        
    </head>
    
    <style>
    </style>
    
    <body>
        <section>
        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>
        
        
        <!-- Begin page content -->
        <main role="main" class="container"> 
            
            <div class="alert alert-warning" role="alert">
                <h1>Erreur 404</h1>
                <p>La ressource que vous recherchez n'a pas été localisée. Veuillez vérifier l'URL et recommencer.</p>
            </div>           

        </main>
        
        <footer class="footer">
            <%@include file="footer.jsp"%>
        </footer>
        
        </section>
        
        
        
        <!-- JavaScript mis à la fin pour charger la page plus vite -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                    
    </body>
      
</html>