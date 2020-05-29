<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="accesbase.AccesVip"%>
<%@page import="entities.Vip"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <%@include file="config.jsp"%>
        <title>CANNES - Modifier VIP</title>
        
        <link href="${CSS}vipajoute.css" rel="stylesheet" /> 
        
    </head>
    
    <body>
        
        <%@include file="header.jsp"%>
        <%@include file="nav.jsp"%>
        
        
        
        <!-- Begin page content -->
        <main role="main" class="container">

            <div class="retour"> <a href="vipliste" class="btn btn-link ">Retour</a> </div>
            
            <div class="h1"> 
                Informations du VIP #${vip.getIdPersonne()}
            </div>
            
            <div class="form-group">
                <form method="POST" action="/PrototypeWeb/vipmodifBD" accept-charset="UTF-8">
                <div class="h2"> 
                    <strong>Nom :</strong><input type="text" class="form-control" name="surname" value="${vip.getNom().toUpperCase()}"></h1>
                </div>
                <div class="h2"> 
                    <strong>Prénom :</strong><input type="text" class="form-control" name="name" value="${vip.getPrenom()}"></h1>
                </div>

 
               <%--<img src="${IMAGES}profilPics/${vip.getPhoto()}">%--%>
                <img src="${IMAGES}profilPics/profilPic.png" class="profil">
       
                <input type="hidden" name="id" value="${vip.getIdPersonne()}">
                </br>
                
                <label><strong>Pays :</strong></label>
                <select class="form-control" name="pays">
                    <option value="${vip.getPaysVip()}">${vip.getPaysVip()}</option>
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Afrique_Centrale">Afrique Centrale</option>
                    <option value="Afrique_du_sud ">Afrique du sud </option>
                    <option value="Albanie">Albanie</option>
                    <option value="Algerie">Algerie</option>
                    <option value="Allemagne">Allemagne</option>
                    <option value="Andorre">Andorre</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Arabie_Saoudite">Arabie Saoudite</option>
                    <option value="Argentine">Argentine</option>
                    <option value="Armenie ">Arménie</option>
                    <option value="Australie">Australie</option>
                    <option value="Autriche">Autriche</option>
                    <option value="Azerbaidjan">Azerbaidjan</option>
                    <option value="Bahamas">Bahamas</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Barbade">Barbade</option>
                    <option value="Bahrein">Bahrein</option>
                    <option value="Belgique">Belgique</option>
                    <option value="Belize">Belize</option>
                    <option value="Benin">Benin</option>
                    <option value="Bermudes">Bermudes</option>
                    <option value="Bielorussie">Bielorussie</option>
                    <option value="Bolivie">Bolivie</option>
                    <option value="Botswana">Botswana</option>
                    <option value="Bhoutan">Bhoutan</option>
                    <option value="Boznie_Herzegovine">Bosnie-Herzégovine</option>
                    <option value="Bresil">Brésil</option>
                    <option value="Brunei">Brunei</option>
                    <option value="Bulgarie">Bulgarie</option>
                    <option value="Burkina_Faso">Burkina Faso</option>
                    <option value="Burundi">Burundi</option>
                    <option value="Caiman">Caiman</option>
                    <option value="Cambodge">Cambodge</option>
                    <option value="Cameroun">Cameroun</option>
                    <option value="Canada">Canada</option>
                    <option value="Cap_vert">Cap-Vert</option>
                    <option value="Chili">Chili</option>
                    <option value="Chine ">Chine </option>
                    <option value="Chypre ">Chypre </option>
                    <option value="Colombie">Colombie</option>
                    <option value="Comores">Comores</option>
                    <option value="Congo">Congo</option>
                    <option value="Congo_democratique">République Démocratique du Congo</option>
                    <option value="Cook">Îles Cook</option>
                    <option value="Coree_du_Nord">Corée du Nord</option>
                    <option value="Coree_du_Sud">Corée du Sud</option>
                    <option value="Costa_Rica">Costa Rica</option>
                    <option value="Cote_d_Ivoire">Côte d'Ivoire</option>
                    <option value="Croatie">Croatie</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Danemark">Danemark</option>
                    <option value="Djibouti">Djibouti</option>
                    <option value="Dominique">Dominique</option>
                    <option value="Egypte ">Egypte</option>
                    <option value="Emirats_Arabes_Unis">Emirats Arabes Unis</option>
                    <option value="Equateur">Equateur</option>
                    <option value="Erythree">Erythree</option>
                    <option value="Espagne">Espagne</option>
                    <option value="Estonie">Estonie</option>
                    <option value="Etats_Unis">Etats-Unis</option>
                    <option value="Ethiopie">Ethiopie</option>
                    <option value="Falkland">Îles Falkland</option>
                    <option value="Feroe">Feroe</option>
                    <option value="Fidji">Fidji</option>
                    <option value="Finlande">Finlande</option>
                    <option value="France">France</option>
                    <option value="Gabon">Gabon</option>
                    <option value="Gambie">Gambie</option>
                    <option value="Georgie">Georgie</option>
                    <option value="Ghana">Ghana</option>
                    <option value="Gibraltar">Gibraltar</option>
                    <option value="Grece">Grèce</option>
                    <option value="Grenade">Grenade</option>
                    <option value="Groenland">Groënland</option>
                    <option value="Guadeloupe">Guadeloupe</option>
                    <option value="Guatemala">Guatemala</option>
                    <option value="Guinee">Guinée</option>
                    <option value="Guinee_Bissau">Guinée Bissau</option>
                    <option value="Guinee_equatoriale">Guinée équatoriale</option>
                    <option value="Guyana">Guyana</option>
                    <option value="Guyane_Francaise ">Guyane Française </option>
                    <option value="Haiti">Haïti</option>
                    <option value="Hawaii">Hawaï</option>
                    <option value="Honduras">Honduras</option>
                    <option value="Hong_Kong">Hong Kong</option>
                    <option value="Hongrie">Hongrie</option>
                    <option value="Inde">Inde</option>
                    <option value="Indonesie">Indonésie</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Irlande">Irlande</option>
                    <option value="Islande">Islande</option>
                    <option value="Israel">Israël</option>
                    <option value="Italie">Italie</option>
                    <option value="Jamaique">Jamaïque</option>
                    <option value="Japon">Japon</option>
                    <option value="Jordanie">Jordanie</option>
                    <option value="Kazakhstan">Kazakhstan</option>
                    <option value="Kenya">Kenya</option>
                    <option value="Kirghizstan">Kirghizstan</option>
                    <option value="Kiribati">Kiribati</option>
                    <option value="Koweit">Koweit</option>
                    <option value="Laos">Laos</option>
                    <option value="Lesotho">Lesotho</option>
                    <option value="Lettonie">Lettonie</option>
                    <option value="Liban">Liban</option>
                    <option value="Liberia">Liberia</option>
                    <option value="Liechtenstein">Liechtenstein</option>
                    <option value="Lituanie">Lituanie</option>
                    <option value="Luxembourg">Luxembourg</option>
                    <option value="Lybie">Lybie</option>
                    <option value="Macao">Macao</option>
                    <option value="Macedoine">Macédoine</option>
                    <option value="Madagascar">Madagascar</option>
                    <option value="Malaisie">Malaisie</option>
                    <option value="Malawi">Malawi</option>
                    <option value="Maldives">Maldives</option>
                    <option value="Mali">Mali</option>
                    <option value="Malte">Malte</option>
                    <option value="Mariannes du Nord">Mariannes du Nord</option>
                    <option value="Maroc">Maroc</option>
                    <option value="Marshall">Îles Marshall</option>
                    <option value="Martinique">Martinique</option>
                    <option value="Maurice">Maurice</option>
                    <option value="Mauritanie">Mauritanie</option>
                    <option value="Mayotte">Mayotte</option>
                    <option value="Mexique">Mexique</option>
                    <option value="Midway">Midway</option>
                    <option value="Moldavie">Moldavie</option>
                    <option value="Monaco">Monaco</option>
                    <option value="Mongolie">Mongolie</option>
                    <option value="Mozambique">Mozambique</option>
                    <option value="Namibie">Namibie</option>
                    <option value="Nauru">Nauru</option>
                    <option value="Nepal">Nepal</option>
                    <option value="Nicaragua">Nicaragua</option>
                    <option value="Niger">Niger</option>
                    <option value="Nigeria">Nigeria</option>
                    <option value="Niue">Niue</option>
                    <option value="Norvege">Norvège</option>
                    <option value="Nouvelle_Caledonie">Nouvelle Calédonie</option>
                    <option value="Nouvelle_Zelande">Nouvelle Zélande</option>
                    <option value="Oman">Oman</option>
                    <option value="Ouganda">Ouganda</option>
                    <option value="Ouzbekistan">Ouzbekistan</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Palau">Palau</option>
                    <option value="Palestine">Palestine</option>
                    <option value="Panama">Panama</option>
                    <option value="Papouasie_Nouvelle_Guinee">Papouasie Nouvelle-Guinée</option>
                    <option value="Paraguay">Paraguay</option>
                    <option value="Pays_Bas">Pays-Bas</option>
                    <option value="Perou">Pérou</option>
                    <option value="Philippines ">Philippines</option>
                    <option value="Pologne">Pologne</option>
                    <option value="Porto_Rico">Porto Rico</option>
                    <option value="Portugal">Portugal</option>
                    <option value="Qatar">Qatar</option>
                    <option value="Republique_Dominicaine">République Dominicaine</option>
                    <option value="Republique_Tcheque">République Tchèque</option>
                    <option value="Reunion">Réunion</option>
                    <option value="Roumanie">Roumanie</option>
                    <option value="Royaume_Uni">Royaume-Uni</option>
                    <option value="Russie">Russie</option>
                    <option value="Rwanda">Rwanda</option>
                    <option value="Sainte_Lucie">Sainte Lucie</option>
                    <option value="Saint_Marin">Saint_Marin</option>
                    <option value="Salomon">Salomon</option>
                    <option value="Salvador">Salvador</option>
                    <option value="Samoa_Occidentales">Samoa</option>
                    <option value="Sao_Tome_et_Principe">Sao Tome et Principe</option>
                    <option value="Senegal ">Sénégal</option>
                    <option value="Seychelles">Seychelles</option>
                    <option value="Sierra Leone">Sierra Leone</option>
                    <option value="Singapour">Singapour</option>
                    <option value="Slovaquie">Slovaquie</option>
                    <option value="Slovenie">Slovénie</option>
                    <option value="Somalie">Somalie</option>
                    <option value="Soudan ">Soudan</option>
                    <option value="Sri_Lanka ">Sri Lanka</option>
                    <option value="Suede">Suède</option>
                    <option value="Suisse">Suisse</option>
                    <option value="Surinam">Surinam</option>
                    <option value="Swaziland">Swaziland</option>
                    <option value="Syrie">Syrie</option>
                    <option value="Tadjikistan">Tadjikistan</option>
                    <option value="Taiwan">Taïwan</option>
                    <option value="Tonga">Tonga</option>
                    <option value="Tanzanie">Tanzanie</option>
                    <option value="Tchad">Tchad</option>
                    <option value="Thailande">Thaïlande</option>
                    <option value="Tibet">Tibet</option>
                    <option value="Timor_Oriental">Timor Oriental</option>
                    <option value="Togo">Togo</option>
                    <option value="Trinite_et_Tobago">Trinité et Tobago</option>
                    <option value="Tunisie">Tunisie</option>
                    <option value="Turkmenistan ">Turkmenistan </option>
                    <option value="Turquie">Turquie</option>
                    <option value="Ukraine">Ukraine</option>
                    <option value="Uruguay">Uruguay</option>
                    <option value="Vanuatu">Vanuatu</option>
                    <option value="Vatican">Vatican</option>
                    <option value="Venezuela">Venezuela</option>
                    <option value="Vietnam">Vietnam</option>
                    <option value="Yemen">Yemen</option>
                    <option value="Zambie">Zambie</option>
                    <option value="Zimbabwe">Zimbabwe</option>
                    <option value=""></option>
                </select><br>
                        
                    <label><strong>Type :</strong></label>
                    <select class="form-control" name="job">
                        <option value="${vip.getProfession()}">${vip.getProfession()}</option>
                        <option value="Acteur">Acteur</option>
                        <option value="Réalisateur">Réalisateur</option>
                        <option value="Agent">Agent</option>
                        <option value="Chanteur">Chanteur</option>
                        <option value="Compositeur">Compositeur</option>
                        <option value="Producteur">Producteur</option>
                        <option value="Sportif">Sportif</option>
                        <option value="Influenceur">Influenceur</option>
                    </select><br>
                
                    <label><strong>Coefficient d'importance :</strong></label>
                    <input class="form-control" type="number" value="${vip.getCoeffImportance()}" name="coef"><br>

                    <label><strong>Compagnon :</strong></label>
                    <select class="form-control" name="compid">
                            <option value="${vip.getIdCompagnon()}">
                                <%
                                    AccesVip avip0 = new AccesVip();
                                    Vip comp = avip0.selectVip(((Vip)request.getAttribute("vip")).getIdCompagnon());
                                    out.print(comp.getNom()+" "+comp.getPrenom());
                                %>
                            </option>
                        <%
                            AccesVip avip = new AccesVip();
                            List<Vip> l = avip.listeVip();
                            for(Iterator iterator = l.iterator(); iterator.hasNext();){
                                Vip f = (Vip) iterator.next();
                        %>
                            <option value="<%= f.getIdPersonne() %>"><%= f.getNom()+" "+f.getPrenom() %></option>
                        <% } %>
                    </select><br>
                        
                    <input type="submit" class="btn btn-secondary btn-lg btn-block" value="Soumettre">
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
