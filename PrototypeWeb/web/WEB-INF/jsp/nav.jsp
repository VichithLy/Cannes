<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
  <a class="navbar-brand" href="#">Gestion</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse mr-auto" id="navbarNavAltMarkup">
    <div class="navbar-nav mr-auto">
      <a class="nav-item nav-link" href="vipliste">Liste des VIP</a>
      <a class="nav-item nav-link" href="planningprojection?jour=12">Planning de projection</a>
    </div>
    
    <div class="navbar-nav ml-auto">

      <a class="nav-link " href="login"><%= session.getAttribute("identifiant") %> | Déconnexion</a>
        
    </div>  
        
  </div>
</nav>




    
    