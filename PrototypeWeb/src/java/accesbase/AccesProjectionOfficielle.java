/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Film;
import entities.ProjectionOfficielle;
import entities.Salle;
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
public class AccesProjectionOfficielle {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesProjectionOfficielle MS = new AccesProjectionOfficielle();
        
        Salle salle1 = new Salle("Cinéma Gérard Philippe Vénissieux 69200", 815);
        
        Film film1 = new Film("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);

        Integer projOff1 = MS.addProjectionOfficielle(film1.getIdFilm(), salle1.getIdSalle(),"12:00","03-10-2006");

        MS.listeProjectionOfficielle();
    
    }
    
    // Methode pour créer une projection officielle dans la base de donnée
    public Integer addProjectionOfficielle(int idFilm, int idSalle, String heureProjection,
            String dateProjection){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idProjectionOfficielle = null;
        
        try {
            tx = session.beginTransaction();
            ProjectionOfficielle f = new ProjectionOfficielle(idFilm, idSalle, heureProjection, dateProjection);
            idProjectionOfficielle = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idProjectionOfficielle;
    }
    
    // Methode pour lire toutes les projection officielles
    public void listeProjectionOfficielle() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List projections = session.createQuery("from ProjectionOfficielle").list();
            
            for(Iterator iterator = projections.iterator(); iterator.hasNext();){
                ProjectionOfficielle f = (ProjectionOfficielle) iterator.next();
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
    
    // Methode pour mettre a jour le film d'une projection officielle
    public void updateFilmProjectionOfficielle(Integer ProjectionOfficielleID, Integer idFilm){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionOfficielle projectionOfficielle = (ProjectionOfficielle)session.get(ProjectionOfficielle.class, ProjectionOfficielleID); 
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
    
    // Methode pour mettre a jour la salle d'une projection officielle
    public void updateSalleProjectionOfficielle(Integer ProjectionOfficielleID, Integer idSalle){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionOfficielle projectionOfficielle = (ProjectionOfficielle)session.get(ProjectionOfficielle.class, ProjectionOfficielleID); 
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
    
    // Methode pour mettre a jour la date d'une projection officielle
    public void updateDateProjectionOfficielle(Integer ProjectionOfficielleID, String dateProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionOfficielle projectionOfficielle = (ProjectionOfficielle)session.get(ProjectionOfficielle.class, ProjectionOfficielleID); 
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
    
    // Methode pour mettre a jour l'heure d'une projection officielle
    public void updateHeureProjectionOfficielle(Integer ProjectionOfficielleID, String heureProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionOfficielle projectionOfficielle = (ProjectionOfficielle)session.get(ProjectionOfficielle.class, ProjectionOfficielleID); 
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
    
    //Methode pour supprimer de la base une projection officielle a partir de son id.
    public void deleteProjectionOfficielle(Integer ProjectionOfficielleID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            ProjectionOfficielle projectionOfficielle = (ProjectionOfficielle)session.get(ProjectionOfficielle.class, ProjectionOfficielleID);
            session.delete(projectionOfficielle);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}