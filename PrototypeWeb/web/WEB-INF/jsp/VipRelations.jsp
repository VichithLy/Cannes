<%@page import="entities.Appel"%>
<%@page import="accesbase.AccesAppel"%>
<%@page import="entities.Fax"%>
<%@page import="accesbase.AccesFax"%>
<%@page import="java.util.Iterator"%>
<%@page import="entities.Mail"%>
<%@page import="java.util.List"%>
<%@page import="accesbase.AccesMail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html>
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Relations VIP</title>
        <link href="${CSS}body.css" rel="stylesheet" />
        <link href="${CSS}relations.css" rel="stylesheet" />
    </head>
    
        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>
        
    <body>
        
        <main role="main" class="container">
   
            <div class="h1">
                <h1>Gestion de relations</h1>
            </div>
            
            <div class="titreRelations"> <h2>Mails</h2> </div>
            
            <%
                int id = Integer.parseInt(request.getParameter("id"));
                AccesMail am = new AccesMail();
                List<Mail> mail= am.listeMailId(id);
                Iterator i = mail.iterator();
            %>
            
            <table class="table table-hover table-fixed">
                <thead class="thead-dark">
                    <tr>
                    
                        <th>Objet</th>
                        <th>Date</th>
                        <th>Contenu</th>
                        <th>Actions entreprise</th>
                    </tr>    
                </thead>
                
                <%
                    while(i.hasNext()){
                        Mail m = (Mail) i.next();
                %>
                 
                <tr>
                    <td><%= m.getObjet() %></td>
                    <td><%= m.getDateSortie() %></td>
                    <td><%= m.getContenu() %></td>
                    <td><%= m.getAction() %></td>
                </tr>
                
                <%       
                    }
                %>
               
            </table>

            <div class="titreRelations"> <h2>Fax</h2> </div>
            
            <%
            AccesFax af = new AccesFax();
            List<Fax> fax= af.listeFaxId(id);
            Iterator j = fax.iterator();
            %>
            
            <table class="table table-hover table-fixed">
                <thead class="thead-dark">      
                    <tr>
                        <th>Numéro</th>
                        <th>Date</th>
                        <th>Contenu</th>
                        <th>Actions entreprise</th>
                    </tr>
                </thead>  

                <%
                    while(j.hasNext()){
                        Fax f = (Fax) j.next();
                %>
                 
                <tr>
                    <td><%= f.getNuméro() %></td>
                    <td><%= f.getDateSortie() %></td>
                    <td><%= f.getContenu() %></td>
                    <td><%= f.getAction() %></td>
                </tr>
                <%       
                    }
                %>
               
            </table>
                
            <div class="titreRelations"> <h2>Appels</h2> </div>
            
            <%
                AccesAppel aa = new AccesAppel();
                List<Appel> appel= aa.listeAppelId(id);
                Iterator k = appel.iterator();
            %>
            
            <table class="table table-hover table-fixed">
                <thead class="thead-dark">  
                    <tr>
                        <th>Numéro</th>
                        <th>Date</th>
                        <th>Contenu</th>
                        <th>Actions entreprise</th>
                    </tr>
                </thead>
                
                <%
                    while(k.hasNext()){
                        Appel a = (Appel) k.next();
                %>
                 
                <tr>
                    <td><%= a.getNuméro() %></td>
                    <td><%= a.getDateSortie() %></td>
                    <td><%= a.getContenu() %></td>
                    <td><%= a.getAction() %></td>
                </tr>
                
                <%       
                    }
                %>
                
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