<%@page import="java.util.Base64"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="accesbase.AccesSalle"%>
<%@page import="entities.Salle"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map"%>
<%@page import="accesbase.AccesFilm"%>
<%@page import="java.util.Arrays"%>
<%@page import="entities.Film"%>
<%@page import="entities.ProjectionOfficielle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<%-- Pour faire apparaitre un form https://www.w3schools.com/howto/howto_js_popup_form.asp --%>

<html>
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Planning des projections</title>
        <% int i = Integer.parseInt(request.getParameter("jour"));%>
        <link href="${CSS}planning.css" rel="stylesheet" />
    </head>
    
    <body>
        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>
        
        <main role="main" class="container-fluid table-responsive">
            
            <% if(session.getAttribute("message")!=null){ %>
                    <%@include file="erreurMsg.jsp"%>
            <% } %>
            
            <div class="h1">
                <h1>Planning projection</h1>
            </div>
            
            <input class="btn btn-secondary btn-lg btn-block" onclick="openForm()" type="submit"  value="Ajouter"/>
                     
            <% 
                String[][] jour1 = (String[][])request.getAttribute("jour1");
                String[][] jour2 = (String[][])request.getAttribute("jour2");
                String[][] jour3 = (String[][])request.getAttribute("jour3");
                String[][] jour4 = (String[][])request.getAttribute("jour4");
                String[][] jour5 = (String[][])request.getAttribute("jour5");
                String[][] jour6 = (String[][])request.getAttribute("jour6");
                String[][] jour7 = (String[][])request.getAttribute("jour7");
                String[][] jour8 = (String[][])request.getAttribute("jour8");
                String[][] jour9 = (String[][])request.getAttribute("jour9");
                String[][] jour10 = (String[][])request.getAttribute("jour10");
                String[][] jour11 = (String[][])request.getAttribute("jour11");
                String[][] jour12 = (String[][])request.getAttribute("jour12");
                
                String [] salles = {"Grand théâtre Lumière","Salle Debussy","Salle du Soixantième","Salle Buñuel","Salle de conférence de presse","Plage Macé"};
                
                ProjectionOfficielle pro = new ProjectionOfficielle(2, 1, "8h00","1");
                ProjectionOfficielle pro1 = new ProjectionOfficielle(8, 1, "21h30","1");
                ProjectionOfficielle pro2 = new ProjectionOfficielle(12, 1, "18h00","1");
                Film f = new AccesFilm().selectFilm(pro.getIdFilm());
                Film f1 = new AccesFilm().selectFilm(pro1.getIdFilm());
                Film f2 = new AccesFilm().selectFilm(pro2.getIdFilm());
                
                AccesFilm af = new AccesFilm();
                
                Map<String,Integer> heure = (Map<String,Integer>)request.getAttribute("heure");
                
                request.setAttribute("heureMap", heure);
                
                //jour1[x][y] avec x la salle et y l'heure et jour1 le jour
                jour1[pro.getIdSalle()-1][heure.get(pro.getHeureProjection())]= f.getNomFilmFr();
                jour12[pro.getIdSalle()-1][heure.get(pro.getHeureProjection())]= f.getNomFilmFr();
                jour3[pro1.getIdSalle()-1][heure.get(pro1.getHeureProjection())]= f1.getNomFilmFr();
                jour3[pro2.getIdSalle()-1][heure.get(pro2.getHeureProjection())]= f2.getNomFilmFr();
                //jour1[0][0] = salle.get(s.getNomSalle()).toString();
                //jour1[0][0] = s.getNomSalle();
                
                if(request.getAttribute("idSalle")!=null && request.getAttribute("ffilm")!=null && request.getAttribute("jourP")!=null && request.getAttribute("idHeur")!=null){
                    int idSalle = (int)request.getAttribute("idSalle");
                    int idHeure = (int)request.getAttribute("idHeure");
                    int jourP = (int)request.getAttribute("jourP");
                    Film f654684 = (Film)request.getAttribute("ffilm");
                    switch(jourP){
                        case 1 : jour1[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 2 : jour2[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 3 : jour3[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 4 : jour4[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 5 : jour5[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 6 : jour6[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 7 : jour7[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 8 : jour8[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 9 : jour9[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 10 : jour10[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 11 : jour11[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                        case 12 : jour12[idSalle][idHeure]=f654684.getNomFilmFr(); break;
                    }
                }
                
            %>
            
<!----------------------------------------------------------- Formulaire pop-up -------------------------------------------------------- !-->           
            <!-- Bouton ajouter !-->
            <div class="form-popup" id="myForm">
                <!-- Formulaire d'ajout de film !-->
                <form action="/PrototypeWeb/ajoutProj" class="form-container" accept-charset="UTF-8" method="POST">
                    
                    <div class="h2"> Film à ajouter </div>
                    <label><strong>Titre :</strong></label><br>
                    <select class="form-control" name="film">
                        <%
                            AccesFilm af0 = new AccesFilm();
                            List<Film> l = af0.listeFilm();
                            for(Iterator iterator = l.iterator(); iterator.hasNext();){
                                Film f05460 = (Film) iterator.next();
                        %>
                            <option value="<%= f05460.getIdFilm() %>"><%= f05460.getNomFilmFr()%></option>
                        <% } %>
                    </select>

                    <label><strong>Heure de début :</strong></label><br> 
                    <select class="form-control" name="heure"> 
                        <option value="8h00">8h00</option>
                        <option value="8h30">8h30</option>
                        <option value="9h00">9h00</option>
                        <option value="9h30">9h30</option>
                        <option value="10h00">10h00</option>
                        <option value="10h30">10h30</option>
                        <option value="11h00">11h00</option>
                        <option value="11h30">11h30</option> 
                        <option value="12h00">12h00</option>
                        <option value="12h30">12h30</option>
                        <option value="13h00">13h00</option>
                        <option value="13h30">13h30</option> 
                        <option value="14h00">14h00</option>
                        <option value="14h30">14h30</option>
                        <option value="15h00">15h00</option>
                        <option value="15h30">15h30</option> 
                        <option value="16h00">16h00</option>
                        <option value="16h30">16h30</option>
                        <option value="17h00">17h00</option>
                        <option value="17h30">17h30</option> 
                        <option value="18h00">18h00</option>
                        <option value="18h30">18h30</option>
                        <option value="19h00">19h00</option>
                        <option value="19h30">19h30</option> 
                        <option value="20h00">20h00</option>
                        <option value="20h30">20h30</option>
                        <option value="21h00">21h00</option>
                        <option value="21h30">21h30</option> 
                        <option value="22h00">22h00</option>
                        <option value="22h30">22h30</option>
                        <option value="23h00">23h00</option>
                        <option value="23h30">23h30</option> 
                        <option value="24h00">24h00</option>
                        <option value="24h30">24h30</option>
                    </select>

                    <label><strong>Salle :</strong></label><br>
                    <select class="form-control" name="salle"> 
                        <option value="0">Grand théâtre Lumière</option>
                        <option value="1">Salle Debussy</option>
                        <option value="2">Salle du Soixantième</option>
                        <option value="3">Salle Buñuel</option>
                        <option value="4">Salle de conférence de presse</option>
                        <option value="5">Plage Macé</option>
                    </select>

                    <label><strong>Jour :</strong></label><br>
                    <select class="form-control" name="jour"> 
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>

                    <label><strong>Catégorie :</strong></label><br>
                    <select class="form-control" name="cat"> 
                        <option value="ProjectionOfficielle">Projection officielle</option>
                        <option value="ProjectionPresse">Projection de presse</option>
                        <option value="SeanceLendemain">Séance du lendemain</option>
                    </select>

                    <button type="submit" class="btn btn-dark">Ajouter la séance</button>
                    <button type="button" class="btn" onclick="closeForm()">Fermer</button>
                </form>
            </div>
                    
<!----------------------------------------------------------- Formulaire pop-up -------------------------------------------------------- !-->                          
                    
 <!--
            <div class="form-popup" id="myForm2">
                            <form action="" class="form-container">

                                <div class="h2"> Description </div>

                                <label><strong>Date de sortie : </strong></label><br>
                                <label><strong>Réalisateur :</strong></label><br>
                                <label><strong>Pays : </strong></label><br>
                                <label><strong>Année de production : </strong></label><br>
                                <label><strong>Durée :</strong></label><br>                     
                                <label><strong>Synopsis : </strong></label><br>

                                <button type="button" class="btn" onclick="closeForm2()">Fermer</button>
                            </form>
            </div> !-->
<!----------------------------------------------------------- Description film pop-up -------------------------------------------------- !-->   

            <table class="table table-hover table-striped" style="font-size: 80%">
                <!-- Titres du tableau !-->
                <thead class="thead-dark">
                    <tr>
                        <th>Jour</th>
                        <th>Salle</th>
                        <th>8h</th>
                        <th></th>
                        <th>9h</th>
                        <th></th>
                        <th>10h</th>
                        <th></th>
                        <th>11h</th>
                        <th></th>
                        <th>12h</th>
                        <th></th>
                        <th>13h</th>
                        <th></th>
                        <th>14h</th>
                        <th></th>
                        <th>15h</th>
                        <th></th>
                        <th>16h</th>
                        <th></th>
                        <th>17h</th>
                        <th></th>
                        <th>18h</th>
                        <th></th>
                        <th>19h</th>
                        <th></th>
                        <th>20h</th>
                        <th></th>
                        <th>21h</th>
                        <th></th>
                        <th>22h</th>
                        <th></th>
                        <th>23h</th>
                        <th></th>
                        <th>24h</th>
                        <th></th>
                    </tr>
                </thead>
                
                <!-- Jour du planning !-->
                <% for(int x=0;x<6;x++){ %> 
                
                <!-- Placement des salles dans le tableau par bloc de 6 !-->
                <tr>
                    <% int z=0; if(x%6==0){%><td rowspan="6">Jour <% if(i>99){z=i/100; out.print(z); }else{z=i/10; out.print(z); } %></td><% } %>
                    <% String[][] tab1=new String[6][34];
                    
                        for(int line=0;line<6;line++)
                            Arrays.fill(tab1[line], "");
                        
                        switch(z){
                        case 1 : tab1=jour1;
                            break;
                        
                        case 3 : tab1=jour3;
                            break;
                        
                        case 5 : tab1=jour5;
                            break;
                        
                        case 7 : tab1=jour7;
                            break;
                        
                        case 9 : tab1=jour9;
                            break;
                        
                        case 11 : tab1=jour11;
                            break;
                    } %>
                    
                    <!-- Nom de la salle !-->
                    <td><%=salles[x%6] %></td>
                    
                    <% for(int y=0;y<34;y++){%>
                    
                    <!-- Taille de la case du film !-->
                    <td colspan="<%
                        int w=y;
                        if(tab1[x][y]!=""){
                            Film fd = af.selectFilmByFrName(tab1[x][y]);
                            if(fd!=null){
                                int colspan = fd.getDuree()/30;
                                out.print(colspan);
                                w=y;
                                y=y+colspan-1;
                            }else{
                                out.print(1);
                            }
                        }else{
                            out.print(1);
                        }
                    %>">
                        
<!----------------------------------------------------------- Description film pop-up -------------------------------------------------- !--> 
                        <!-- Nom du film !-->
                        <button type="button" class="btn btn-link lien" onclick="openForm2()"> <%= tab1[x][w] %> </button>
                        
                        <div class="form-popup2" id="myForm2">
                            <form action="" class="form-container">

                                <h2>Nom du film</h2>
                                </br>

                                <label><strong>Date de sortie : </strong></label><br>
                                <label><strong>Réalisateur :</strong></label><br>
                                <label><strong>Pays : </strong></label><br>
                                <label><strong>Année de production : </strong></label><br>
                                <label><strong>Durée :</strong></label><br>                     
                                <label><strong>Synopsis : </strong></label><br>

                                <button type="button" class="btn" onclick="closeForm2()">Fermer</button>
                            </form>
                        </div>
<!----------------------------------------------------------- Description film pop-up -------------------------------------------------- !--> 

                    </td>
                    <% } %>      
                </tr>
                <% } %>
                
                <!-- Jour du planning !-->
                <% for(int x=0;x<6;x++){ %>
                <tr>
                    <% int a=0; if(x%6==0){%><td rowspan="6">Jour <% if(i>99){a=i%100; out.print(a); }else{a=i%10; out.print(a); } %></td><% } %>
                    <% String[][] tab2=new String[6][34];
                    
                        for(int line=0;line<6;line++)
                            Arrays.fill(tab2[line], "");
                        
                        switch(a){
                        case 2 : tab2=jour2;
                            break;
                        
                        case 4 : tab2=jour4;
                            break;
                        
                        case 6 : tab2=jour6;
                            break;
                        
                        case 8 : tab2=jour8;
                            break;
                        
                        case 10 : tab2=jour10;
                            break;
                        
                        case 12 : tab2=jour12;
                            break;
                    } %>
                    <td><%=salles[x%6] %></td>
                    <% for(int y=0;y<34;y++){%>
                    <td colspan="<%
                        int w=y;
                        if(tab2[x][y]!=""){
                            Film fd = af.selectFilmByFrName(tab2[x][y]);
                            if(fd!=null){
                                int colspan = fd.getDuree()/30;
                                out.print(colspan);
                                w=y;
                                y=y+colspan-1;
                            }else{
                                out.print(1);
                            }
                        }else{
                            out.print(1);
                        }
                    %>">
<!----------------------------------------------------------- Description film pop-up -------------------------------------------------- !--> 
                        <button type="button" class="btn btn-link lien" onclick="openForm2()"> <%= tab2[x][w] %> </button>

                        <div class="form-popup2" id="myForm2">
                            <form action="" class="form-container">

                                <h2>Nom du film</h2>
                                </br>

                                <label><strong>Date de sortie : </strong></label><br>
                                <label><strong>Réalisateur :</strong></label><br>
                                <label><strong>Pays : </strong></label><br>
                                <label><strong>Année de production : </strong></label><br>
                                <label><strong>Durée :</strong></label><br>                     
                                <label><strong>Synopsis : </strong></label><br>

                                <button type="button" class="btn" onclick="closeForm2()">Fermer</button>
                            </form>
                        </div>
<!----------------------------------------------------------- Description film pop-up -------------------------------------------------- !-->                         
                    </td>
                    <% } %>
                </tr>
                <% } %>
            </table>
            
            <!-- Periode du planning !-->
            <a href="planningprojection?jour=<%   switch(i){
                        case 34 : out.print("12");
                            break;
                        case 56 : out.print("34");
                            break;
                        case 78 : out.print("56");
                            break;
                        case 910 : out.print("78");
                            break;
                        case 1112 : out.print("910");
                            break;
                    }
               %>" class="btn btn-secondary btn-sm" style="float: left; <%if(i==12)out.print("display : none");%>">Précédent</a> <!-- Bouton précédent !-->
            <a href="planningprojection?jour=<%   switch(i){
                        case 12 : out.print("34");
                            break;
                        case 34 : out.print("56");
                            break;
                        case 56 : out.print("78");
                            break;
                        case 78 : out.print("910");
                            break;
                        case 910 : out.print("1112");
                            break;
                    }
               %>" class="btn btn-secondary btn-sm" style="float: right; <%if(i==1112)out.print("display : none");%>">Suivant</a> <!-- Bouton suivant !-->
     
        </main>
        
        <footer class="footer">
            <%@include file="footer.jsp"%>
        </footer>
        
        <!-- JavaScript mis à la fin pour charger la page plus vite -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
           
        <!-- Scripts pop-up !-->
        <script>
            
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
            
            function openForm2() {
                document.getElementById("myForm2").style.display = "block";
            }

            function closeForm2() {
                document.getElementById("myForm2").style.display = "none";
            }
            
        </script>
    </body>

</html>