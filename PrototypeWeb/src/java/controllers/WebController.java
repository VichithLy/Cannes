package controllers;

import accesbase.AccesFilm;
import accesbase.AccesUtilisateur;
import entities.Utilisateur;
import accesbase.AccesVip;
import entities.Film;
import entities.Projection;
import entities.ProjectionOfficielle;
import entities.ProjectionPresse;
import entities.SeanceLendemain;
import entities.Vip;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.EncryptionModule;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nassim
 */
@Controller
public class WebController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("isLogged", false);
        return new ModelAndView("Login", "command", new Utilisateur());
    }
    
    @RequestMapping(value = "/loginoubli", method = RequestMethod.GET)
    public String loginOubli() {
        return "LoginOubli";
    }
    
    @RequestMapping(value = "/planningprojection", method = RequestMethod.GET)
    public String planningProjection(HttpServletRequest request) {
        HttpSession session = request.getSession();
        int i = Integer.parseInt(request.getParameter("jour"));
        
        Map<String,Integer> heure = new TreeMap<>();
        heure.put("8h00", 0);
        heure.put("8h30", 1);
        heure.put("9h00", 2);
        heure.put("9h30", 3);
        heure.put("10h00", 4);
        heure.put("10h30", 5);
        heure.put("11h00", 6);
        heure.put("11h30", 7);
        heure.put("12h00", 8);
        heure.put("12h30", 9);
        heure.put("13h00", 10);
        heure.put("13h30", 11);
        heure.put("14h00", 12);
        heure.put("14h30", 13);
        heure.put("15h00", 14);
        heure.put("15h30", 15);
        heure.put("16h00", 16);
        heure.put("16h30", 17);
        heure.put("17h00", 18);
        heure.put("17h30", 19);
        heure.put("18h00", 20);
        heure.put("18h30", 21);
        heure.put("19h00", 22);
        heure.put("19h30", 23);
        heure.put("20h00", 24);
        heure.put("20h30", 25);
        heure.put("21h00", 26);
        heure.put("21h30", 27);
        heure.put("22h00", 28);
        heure.put("22h30", 29);
        heure.put("23h00", 30);
        heure.put("23h30", 31);
        heure.put("24h00", 32);
        heure.put("24h30", 33);
        
        request.setAttribute("heure", heure);
        
        String[][] jour1 = new String[6][34];
        String[][] jour2 = new String[6][34];
        String[][] jour3 = new String[6][34];
        String[][] jour4 = new String[6][34];
        String[][] jour5 = new String[6][34];
        String[][] jour6 = new String[6][34];
        String[][] jour7 = new String[6][34];
        String[][] jour8 = new String[6][34];
        String[][] jour9 = new String[6][34];
        String[][] jour10 = new String[6][34];
        String[][] jour11 = new String[6][34];
        String[][] jour12 = new String[6][34];

        for(int line=0;line<6;line++){
            for(int col=0;col<34;col++){
                if(jour1[line][col]==null){
                    jour1[line][col]="";
                }
                if(jour2[line][col]==null){
                    jour2[line][col]="";
                }
                if(jour3[line][col]==null){
                    jour3[line][col]="";
                }
                if(jour4[line][col]==null){
                    jour4[line][col]="";
                }
                if(jour5[line][col]==null){
                    jour5[line][col]="";
                }
                if(jour6[line][col]==null){
                    jour6[line][col]="";
                }
                if(jour7[line][col]==null){
                    jour7[line][col]="";
                }
                if(jour8[line][col]==null){
                    jour8[line][col]="";
                }
                if(jour9[line][col]==null){
                    jour9[line][col]="";
                }
                if(jour10[line][col]==null){
                    jour10[line][col]="";
                }
                if(jour11[line][col]==null){
                    jour11[line][col]="";
                }
                if(jour12[line][col]==null){
                    jour12[line][col]="";
                }
            }
        }
             
        request.setAttribute("jour1", jour1);
        request.setAttribute("jour2", jour2);
        request.setAttribute("jour3", jour3);
        request.setAttribute("jour4", jour4);
        request.setAttribute("jour5", jour5);
        request.setAttribute("jour6", jour6);
        request.setAttribute("jour7", jour7);
        request.setAttribute("jour8", jour8);
        request.setAttribute("jour9", jour9);
        request.setAttribute("jour10", jour10);
        request.setAttribute("jour11", jour11);
        request.setAttribute("jour12", jour12);
        
        System.out.println(i);
        
        if(i!=12 && i!=34 && i!=56 && i!=78 && i!=910 && i!=1112){
            session.setAttribute("message", "Jours incorrects");
            return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipListe");
        }else{
            return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "PlanningProjection");
        }
    }
    
    @RequestMapping(value="/ajoutProj", method = RequestMethod.POST)
    public String ajoutProj (ModelMap model, HttpServletRequest request) throws UnsupportedEncodingException, IOException, ClassNotFoundException{
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        int idfilm = Integer.parseInt(request.getParameter("film"));
        int idsalle = Integer.parseInt(request.getParameter("salle"));
        String heure = request.getParameter("heure");
        String jour = request.getParameter("jour");
        String catProj = request.getParameter("cat");
        
        Projection proj;
        switch(catProj){
            case "ProjectionOfficielle": proj = new ProjectionOfficielle(idfilm, idsalle, heure, jour); break;
            case "ProjectionPresse": proj = new ProjectionPresse(idfilm, idsalle, heure, jour); break;
            case "SeanceLendemain": proj = new SeanceLendemain(idfilm, idsalle, heure, jour); break;
            default: proj = null; break;
        }
        
        Map<String,Integer> heureMap = new TreeMap<>();
        heureMap.put("8h00", 0);
        heureMap.put("8h30", 1);
        heureMap.put("9h00", 2);
        heureMap.put("9h30", 3);
        heureMap.put("10h00", 4);
        heureMap.put("10h30", 5);
        heureMap.put("11h00", 6);
        heureMap.put("11h30", 7);
        heureMap.put("12h00", 8);
        heureMap.put("12h30", 9);
        heureMap.put("13h00", 10);
        heureMap.put("13h30", 11);
        heureMap.put("14h00", 12);
        heureMap.put("14h30", 13);
        heureMap.put("15h00", 14);
        heureMap.put("15h30", 15);
        heureMap.put("16h00", 16);
        heureMap.put("16h30", 17);
        heureMap.put("17h00", 18);
        heureMap.put("17h30", 19);
        heureMap.put("18h00", 20);
        heureMap.put("18h30", 21);
        heureMap.put("19h00", 22);
        heureMap.put("19h30", 23);
        heureMap.put("20h00", 24);
        heureMap.put("20h30", 25);
        heureMap.put("21h00", 26);
        heureMap.put("21h30", 27);
        heureMap.put("22h00", 28);
        heureMap.put("22h30", 29);
        heureMap.put("23h00", 30);
        heureMap.put("23h30", 31);
        heureMap.put("24h00", 32);
        heureMap.put("24h30", 33);
        Film f = new AccesFilm().selectFilm(proj.getIdFilm());
        
        int idsal = proj.getIdSalle()-1;
        int idHeure = heureMap.get(proj.getHeureProjection());
        
        request.setAttribute("idSalle", idsal);
        request.setAttribute("idHeure", idHeure);
        request.setAttribute("ffilm", f);
        request.setAttribute("jourP", jour);
        
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "PlanningProjection");
    }
    
    @RequestMapping(value = "/vipfiche", method = RequestMethod.GET)
    public String vipFiche(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipFiche");
    }
    
    @RequestMapping(value = "/vipliste", method = RequestMethod.GET)
    public String vipListe(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipListe");
    }
    
    @RequestMapping(value = "/vipmodif", method = RequestMethod.GET)
    public String vipModif(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipModif");
    }
    
        @RequestMapping(value = "/viprelations", method = RequestMethod.GET)
    public String vipRelations(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipRelations");
    }
    
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String erreur() {
        return "erreur404";
    }
    
    // Gestion du formulaire de la page login
    @RequestMapping(value = "/connexion", method = RequestMethod.POST)
    public String connexion(@ModelAttribute("SpringWeb")Utilisateur u, ModelMap model, HttpServletRequest request){
        AccesUtilisateur au = new AccesUtilisateur();
        String mdp = au.utilisateurParIdentifiant(u.getIdentifiant()).getPasse();
        int id = au.utilisateurParIdentifiant(u.getIdentifiant()).getIdUtilisateur();
        EncryptionModule em = new EncryptionModule();
        HttpSession session = request.getSession();
        if((em.encrypt(u.getPasse()).equals(mdp))){
            session.setAttribute("id", id);
            session.setAttribute("identifiant", u.getIdentifiant());
            session.setAttribute("isLogged", true);
            return "VipListe";
        }else{
            session.setAttribute("isLogged", false);
            session.setAttribute("message", "Identifiant ou mot de passe incorrect, veuillez vérifier la saisie.");
            return "redirect:login";
        }
    }
    
    // Gestion du formulaire de la page 
    @RequestMapping(value="/vipaffiche", method = RequestMethod.POST)
    public String vipaffiche (ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        AccesVip av = new AccesVip();
        Vip v = av.selectVip(Integer.parseInt(request.getParameter("idvip")));
        model.addAttribute("vip", v);
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipFiche");
    }
    
    // Gestion du formulaire de la page 
    @RequestMapping(value="/vipsupprime", method = RequestMethod.POST)
    public String vipsupprime (ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        AccesVip av = new AccesVip();
        av.deleteVip(Integer.parseInt(request.getParameter("idvip")));
        session.setAttribute("message", "Le VIP #"+request.getParameter("idvip")+" a bien été supprimé");
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipListe");
    }
    
    // Gestion du formulaire de la page 
    @RequestMapping(value="/vipmodif", method = RequestMethod.POST)
    public String vipmodif (ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        AccesVip av = new AccesVip();
        Vip v = av.selectVip(Integer.parseInt(request.getParameter("idvip")));
        model.addAttribute("vip", v);
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipModif");
    }
    
    @RequestMapping(value="/vipmodifBD", method = RequestMethod.POST)
    public String vipmodifBD (ModelMap model, HttpServletRequest request) throws UnsupportedEncodingException{
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        AccesVip av = new AccesVip();
        int id = Integer.parseInt(request.getParameter("id"));
        av.updateNomVip(id, request.getParameter("surname").toUpperCase());
        av.updatePrenomVip(id, request.getParameter("name"));
        av.updatePaysVip(id, request.getParameter("pays"));
        av.updateProfessionVip(id, request.getParameter("job"));
        av.updateCoeffVip(id, Integer.parseInt(request.getParameter("coef")));
        av.updateCompagnonVip(id, Integer.parseInt(request.getParameter("compid")));
        Vip v = av.selectVip(id);
        model.addAttribute("vip", v);
        session.setAttribute("message", "VIP #"+v.getIdPersonne()+" a bien été modifié");
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipFiche");
    }
    
    @RequestMapping(value="/vipajout", method = RequestMethod.POST)
    public String vipajout (ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipAjout");
    }
    
    @RequestMapping(value="/vipajoutBD", method = RequestMethod.POST)
    public String vipajoutBD (ModelMap model, HttpServletRequest request) throws UnsupportedEncodingException{
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        AccesVip av = new AccesVip();
        int id = av.addVip(request.getParameter("surname").toUpperCase(), request.getParameter("name"), request.getParameter("job"), "none.png", request.getParameter("pays"), Integer.parseInt(request.getParameter("coef")), Integer.parseInt(request.getParameter("compid")));
        Vip v = av.selectVip(id);
        model.addAttribute("vip", v);
        session.setAttribute("message", "VIP #"+v.getIdPersonne()+" a bien été ajouté");
        return this.ifIsLogged((Boolean)session.getAttribute("isLogged"), "VipFiche");
    }
    
    public String ifIsLogged(Boolean sessionAttribute, String successPage){
        if(!sessionAttribute.equals(true) || sessionAttribute==null){
            return "redirect:login";
        }else{
            return successPage;
        }
    }
}