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
        
        <main role="main" class="container-fluid">
            
            <% if(session.getAttribute("message")!=null){ %>
                    <%@include file="erreurMsg.jsp"%>
            <% } %>
            
            <div class="h1">
                <h1>Planning projection</h1>
            </div>
            
            <input type="button" value="Ajouter">
               <br/><br/>
            <table class="table table-hover">
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
                                <% Film f;
                    switch(i){
                    case 12:
                        ProjectionOfficielle po = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                        f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                        String heure = po.getHeureProjection();
                        switch(heure){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">1</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% } %>
                <%case 23:
                    ProjectionOfficielle po2 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                    String heure2 = po2.getHeureProjection();
                    switch(heure2){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% } %>
                <%  ProjectionOfficielle po3 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                    String heure3 = po3.getHeureProjection();
                    switch(heure3){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po4 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure4 = po4.getHeureProjection();
                switch(heure4){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po5 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure5 = po5.getHeureProjection();
                switch(heure5){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po6 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure6 = po6.getHeureProjection();
                switch(heure6){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po7 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure7 = po7.getHeureProjection();
                switch(heure7){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">2</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po8 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure8 = po8.getHeureProjection();
                switch(heure8){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po9 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure9 = po9.getHeureProjection();
                switch(heure9){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po10 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure10 = po10.getHeureProjection();
                switch(heure10){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po11 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure11 = po11.getHeureProjection();
                switch(heure11){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po12 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                    String heure12 = po12.getHeureProjection();
                    switch(heure12){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% } %>
                <%
                        break;
                    case 34:
                %>
                <%  ProjectionOfficielle po13 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure13 = po13.getHeureProjection();
                switch(heure13){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">3</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po14 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure14 = po14.getHeureProjection();
                switch(heure14){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po15 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure15 = po15.getHeureProjection();
                switch(heure15){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po16 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure16 = po16.getHeureProjection();
                switch(heure16){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po17 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure17 = po17.getHeureProjection();
                switch(heure17){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po18 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure18 = po18.getHeureProjection();
                switch(heure18){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po19 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure19 = po19.getHeureProjection();
                switch(heure19){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">4</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po20 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure20 = po20.getHeureProjection();
                switch(heure20){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po21 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure21 = po21.getHeureProjection();
                switch(heure21){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po22 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure22 = po22.getHeureProjection();
                switch(heure22){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po23 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure23 = po23.getHeureProjection();
                switch(heure23){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <<td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po24 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure24 = po24.getHeureProjection();
                switch(heure24){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%
                        break;
                    case 56:
                %>
                <%  ProjectionOfficielle po25 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure25 = po25.getHeureProjection();
                switch(heure25){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">5</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po26 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure26 = po26.getHeureProjection();
                switch(heure26){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po27 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure27 = po27.getHeureProjection();
                switch(heure27){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po28 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure28 = po28.getHeureProjection();
                switch(heure28){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po29 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure29 = po29.getHeureProjection();
                switch(heure29){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po30 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure30 = po30.getHeureProjection();
                switch(heure30){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po31 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure31 = po31.getHeureProjection();
                switch(heure31){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">6</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po32 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure32 = po32.getHeureProjection();
                switch(heure32){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po33 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure33 = po33.getHeureProjection();
                switch(heure33){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po34 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure34 = po34.getHeureProjection();
                switch(heure34){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po35 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure35 = po35.getHeureProjection();
                switch(heure35){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po36 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure36 = po36.getHeureProjection();
                switch(heure36){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%
                        break;
                    case 78:
                %>
                <%  ProjectionOfficielle po37 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure37 = po37.getHeureProjection();
                switch(heure37){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">7</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po38 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure38 = po38.getHeureProjection();
                switch(heure38){
                %>
                <tr>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po39 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure39 = po39.getHeureProjection();
                switch(heure39){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po40 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure40 = po40.getHeureProjection();
                switch(heure40){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po41 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure41 = po41.getHeureProjection();
                switch(heure41){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po42 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure42 = po42.getHeureProjection();
                switch(heure42){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po43 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure43 = po43.getHeureProjection();
                switch(heure43){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">8</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po44 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure44 = po44.getHeureProjection();
                switch(heure44){
                %>
                <tr>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po45 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure45 = po45.getHeureProjection();
                switch(heure40){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po46 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure46 = po46.getHeureProjection();
                switch(heure46){
                %>
                <tr>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po47 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure47 = po47.getHeureProjection();
                switch(heure47){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po48 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure48 = po48.getHeureProjection();
                switch(heure48){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%
                        break;
                    case 910:
                %>
                <%  ProjectionOfficielle po49 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure49 = po49.getHeureProjection();
                switch(heure49){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">9</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po50 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure50 = po50.getHeureProjection();
                switch(heure50){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po51 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure51 = po51.getHeureProjection();
                switch(heure51){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po52 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure52 = po52.getHeureProjection();
                switch(heure52){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po53 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure53 = po53.getHeureProjection();
                switch(heure53){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po54 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure54 = po54.getHeureProjection();
                switch(heure54){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po55 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure55 = po55.getHeureProjection();
                switch(heure55){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">10</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po56 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure56 = po56.getHeureProjection();
                switch(heure56){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po57 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure57 = po57.getHeureProjection();
                switch(heure57){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po58 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure58 = po58.getHeureProjection();
                switch(heure58){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po59 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure59 = po59.getHeureProjection();
                switch(heure59){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po60 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure60 = po60.getHeureProjection();
                switch(heure60){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%
                        break;
                    case 1112:
                %>
                <%  ProjectionOfficielle po61 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure61 = po61.getHeureProjection();
                switch(heure61){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">11</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po62 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure62 = po62.getHeureProjection();
                switch(heure62){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po63 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure63 = po63.getHeureProjection();
                switch(heure63){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po64 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure64 = po64.getHeureProjection();
                switch(heure64){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po65 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure65 = po65.getHeureProjection();
                switch(heure65){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po66 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure66 = po66.getHeureProjection();
                switch(heure66){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po67 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure67 = po67.getHeureProjection();
                switch(heure67){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">12</td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Grand théâtre Lumière</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po68 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure68 = po68.getHeureProjection();
                switch(heure68){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Debussy</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po69 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure69 = po69.getHeureProjection();
                switch(heure69){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle du Soixantième</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po70 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure70 = po70.getHeureProjection();
                switch(heure70){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle Buñuel</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po71 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure71 = po71.getHeureProjection();
                switch(heure71){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Salle de conférence de presse</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%  ProjectionOfficielle po72 = new ProjectionOfficielle(1, 1, "8:00", "01/01/2019");
                    f = new Film("a", "a", "", 2019, "", 12, "01/01/2019", "vh", 1);
                String heure72 = po72.getHeureProjection();
                switch(heure72){
                %>
                <tr>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff"></td>
                    <td style="border-color: #32383e; background-color: #212529; color: #fff">Plage Macé</td>
                    <td><%case "8:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "8:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "9:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "10:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "11:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "12:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "13:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "14:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "15:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "16:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "17:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "18:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "19:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "20:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "21:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "22:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "23:30":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:00":  out.print(f.getNomFilmOg()); break;%></td>
                    <td><%case "24:30":  out.print(f.getNomFilmOg()); break;%></td>
                </tr>
                <% }
                %>
                <%
                        break;
                    }
                %>

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
               %>" class="btn btn-secondary btn-sm" style="float: left; <%if(i==12)out.print("display : none");%>">Précédent</a>
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
               %>" class="btn btn-secondary btn-sm" style="float: right; <%if(i==1112)out.print("display : none");%>">Suivant</a>
        </main>
        
        <footer class="footer">
            <%@include file="footer.jsp"%>
        </footer>
        
        <!-- JavaScript mis à la fin pour charger la page plus vite -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
               
    </body>