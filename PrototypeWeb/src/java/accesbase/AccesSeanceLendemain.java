/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Film;
import entities.SeanceLendemain;
import entities.Salle;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Michel
 */
public class AccesSeanceLendemain {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesSeanceLendemain MS = new AccesSeanceLendemain();
        
        Salle salle1 = new Salle("Cinéma Gérard Philippe Vénissieux 69200", 815);
        
        Film film1 = new Film("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);

        Integer seanceLend1 = MS.addSeanceLendemain(film1.getIdFilm(), salle1.getIdSalle(),"12:00","03-10-2006");

        MS.listeSeanceLendemain();
    
    }
    
    // Methode pour créer une séance du lendemain dans la base de donnée
    public Integer addSeanceLendemain(int idFilm, int idSalle, String heureProjection, String dateProjection){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idSeanceLendemain = null;
        
        try {
            tx = session.beginTransaction();
            SeanceLendemain f = new SeanceLendemain(idFilm, idSalle, heureProjection, dateProjection);
            idSeanceLendemain = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idSeanceLendemain;
    }
    
    // Methode pour lire toutes les séances du lendemain
    public void listeSeanceLendemain() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List projections = session.createQuery("from SeanceLendemain").list();
            
            for(Iterator iterator = projections.iterator(); iterator.hasNext();){
                SeanceLendemain f = (SeanceLendemain) iterator.next();
                System.out.println("ID: " + f.getIdProjection()+
                        ", ID Film: "+f.getIdFilm()+
                        ", ID Salle: "+f.getIdSalle()+
                        ", Heure de projection: "+f.getHeureProjection()+
                        ", Date de projection: "+f.getDateProjection());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le film d'une séance du lendemain
    public void updateFilmSeanceLendemain(Integer SeanceLendemainID, Integer idFilm){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        SeanceLendemain projectionOfficielle = (SeanceLendemain)session.get(SeanceLendemain.class, SeanceLendemainID); 
        projectionOfficielle.setIdFilm(idFilm);
        session.update(projectionOfficielle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la salle d'une séance du lendemain
    public void updateSalleSeanceLendemain(Integer SeanceLendemainID, Integer idSalle){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        SeanceLendemain projectionOfficielle = (SeanceLendemain)session.get(SeanceLendemain.class, SeanceLendemainID); 
        projectionOfficielle.setIdSalle(idSalle);
        session.update(projectionOfficielle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la date d'une séance du lendemain
    public void updateDateSeanceLendemain(Integer SeanceLendemainID, String dateProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        SeanceLendemain projectionOfficielle = (SeanceLendemain)session.get(SeanceLendemain.class, SeanceLendemainID); 
        projectionOfficielle.setDateProjection(dateProj);
        session.update(projectionOfficielle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour l'heure d'une séance du lendemain
    public void updateHeureSeanceLendemain(Integer SeanceLendemainID, String heureProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        SeanceLendemain projectionOfficielle = (SeanceLendemain)session.get(SeanceLendemain.class, SeanceLendemainID); 
        projectionOfficielle.setHeureProjection(heureProj);
        session.update(projectionOfficielle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une seance du lendemain a partir de son id.
    public void deleteSeanceLendemain(Integer SeanceLendemainID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            SeanceLendemain seanceLendemain = (SeanceLendemain)session.get(SeanceLendemain.class, SeanceLendemainID);
            session.delete(seanceLendemain);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}

