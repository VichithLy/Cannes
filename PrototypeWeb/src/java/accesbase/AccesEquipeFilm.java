/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.EquipeFilm;
import entities.Vip;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Nassim x Michel
 */
public class AccesEquipeFilm {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesEquipeFilm MS = new AccesEquipeFilm();
        
        Vip vip1 = new Vip("Gagné", "Yann", "Réalisateur", "yann.jpg","Canada", 1500, 1);
        
        ArrayList<Integer> membres = null;
        membres.add(vip1.getIdPersonne());
        
        Integer equip1 = MS.addEquipeFilm("Cars", membres);

        MS.listeEquipeFilm();
    
    }
    
    // Methode pour créer une équipe de film dans la base de donnée
    public Integer addEquipeFilm(String nomFilmEquipe, ArrayList<Integer> membres){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idEquipeFilm = null;
        
        try {
            tx = session.beginTransaction();
            EquipeFilm f = new EquipeFilm(nomFilmEquipe,membres);
            idEquipeFilm = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idEquipeFilm;
    }
    
    // Methode pour lire toutes les équipes de films
    public void listeEquipeFilm() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List categories = session.createQuery("from EquipeFilm").list();
            
            for(Iterator iterator = categories.iterator(); iterator.hasNext();){
                EquipeFilm f = (EquipeFilm) iterator.next();
                System.out.println("ID: " + f.getIdEquipeFilm()+
                        ", Nom du film réalisé: "+f.getNomFilmEquipe()+
                        ", Membres: "+f.getMembres());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom du film réalisé par une équipe
    public void updateEquipeFilm(Integer EquipeFilmID, String nomFilmEquipe){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        EquipeFilm equipeFilm = (EquipeFilm)session.get(EquipeFilm.class, EquipeFilmID); 
        equipeFilm.setNomFilmEquipe(nomFilmEquipe);
        session.update(equipeFilm);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une EquipeFilm a partir de son id.
    public void deleteEquipeFilm(Integer EquipeFilmID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            EquipeFilm equipeFilm = (EquipeFilm)session.get(EquipeFilm.class, EquipeFilmID);
            session.delete(equipeFilm);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}