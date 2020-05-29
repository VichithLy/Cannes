<%@page import="entities.Vip"%>
<%@page import="java.util.List"%>
<%@page import="accesbase.AccesVip"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page isELIgnored = "false" %>
<%@taglib prefix = "form" uri = "http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Liste VIP</title>
        <link href="${CSS}body.css" rel="stylesheet" />
        <link href="${CSS}liste.css" rel="stylesheet" />
        
    </head>
    
    <style>
    </style>
    
    <body>

        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>
        
        
        <main role="main" class="container"> 
            <% if(session.getAttribute("message")!=null){ %>
                    <%@include file="erreurMsg.jsp"%>
            <% } %>
            <div class="h1">
                <h1>Liste des VIP</h1>
            </div>           
            
            <form method="POST" action="/PrototypeWeb/vipajout">
                <input class="btn btn-secondary btn-lg btn-block" type="submit"  value="Ajouter"/>
            </form>

            <table class="table table-hover table-fixed">
                <thead class="thead-dark">
                    <tr>
                      <th>Nom</th>
                      <th>Prénom</th>
                      <th>Numéro</th>
                      <th>Action</th>
                    </tr>
                
                <% 
                    AccesVip avip = new AccesVip();
                    List<Vip> l = avip.listeVip();
                    for(Iterator iterator = l.iterator(); iterator.hasNext();){
                        Vip f = (Vip) iterator.next();
                %>
                
                </thead>
                
                <tbody> 
                    <tr> 
                        <td><%= f.getNom() %></td>
                        <td><%= f.getPrenom() %></td>
                        <td><%= f.getIdPersonne() %></td>
                        <td>
                            <form method="POST" action="/PrototypeWeb/vipaffiche">
                                <input type="hidden" name="idvip" value="<%= f.getIdPersonne() %>"/>
                                <input class="btn btn-secondary" type="submit" value="Acceder"/>
                            </form>

                            <form method="POST" action="/PrototypeWeb/vipsupprime">
                                <input type="hidden" name="idvip" value="<%= f.getIdPersonne() %>"/>
                                <input class="btn btn-danger" type="submit" value="Supprimer"/>
                            </form>
                        </td>
                        <% } %>
                    </tr>
                
                </tbody>
            </table>
         
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


<%--

<tr> 
        <% 
                    AccesVip avip = new AccesVip();
                    List<Vip> l = avip.listeVip();
                    for(Iterator iterator = l.iterator(); iterator.hasNext();){
                        Vip f = (Vip) iterator.next();
        %>
        
        <td><%= f.getNom() %></td>
        <td><%= f.getPrenom() %></td>
        <td><%= f.getIdPersonne() %></td>
        <td>
            <form method="POST" action="/PrototypeWeb/vipaffiche">
                <input type="hidden" name="idvip" value="<%= f.getIdPersonne() %>"/>
                <input type="submit" value="Acceder"/>
            </form>
            <form method="POST" action="/PrototypeWeb/vipsupprime">
                <input type="hidden" name="idvip" value="<%= f.getIdPersonne() %>"/>
                <input type="submit" value="Supprimer"/>
            </form>
        </td>
        <% } %>
    </tr>
    
--%>