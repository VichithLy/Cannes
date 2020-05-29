/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Film;
import entities.ProjectionPresse;
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
public class AccesProjectionPresse {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesProjectionPresse MS = new AccesProjectionPresse();
        
        Salle salle1 = new Salle("Cinéma Gérard Philippe Vénissieux 69200", 815);
        
        Film film1 = new Film("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);

        Integer projPress1 = MS.addProjectionPresse(film1.getIdFilm(), salle1.getIdSalle(),"12:00","03-10-2006");

        MS.listeProjectionPresse();
    
    }
    
    // Methode pour créer une projection de presse dans la base de donnée
    public Integer addProjectionPresse(int idFilm, int idSalle, String heureProjection, String dateProjection){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idProjectionPresse = null;
        
        try {
            tx = session.beginTransaction();
            ProjectionPresse f = new ProjectionPresse(idFilm, idSalle, heureProjection, dateProjection);
            idProjectionPresse = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idProjectionPresse;
    }
    
    // Methode pour lire toutes les projections de presse
    public void listeProjectionPresse() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List projections = session.createQuery("from ProjectionPresse").list();
            
            for(Iterator iterator = projections.iterator(); iterator.hasNext();){
                ProjectionPresse f = (ProjectionPresse) iterator.next();
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
    
    // Methode pour mettre a jour le film d'une projection de presse
    public void updateFilmProjectionPresse(Integer ProjectionPresseID, Integer idFilm){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionPresse projectionOfficielle = (ProjectionPresse)session.get(ProjectionPresse.class, ProjectionPresseID); 
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
    
    // Methode pour mettre a jour la salle d'une projection de presse
    public void updateSalleProjectionPresse(Integer ProjectionPresseID, Integer idSalle){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionPresse projectionOfficielle = (ProjectionPresse)session.get(ProjectionPresse.class, ProjectionPresseID); 
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
    
    // Methode pour mettre a jour la date d'une projection de presse
    public void updateDateProjectionPresse(Integer ProjectionPresseID, String dateProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionPresse projectionOfficielle = (ProjectionPresse)session.get(ProjectionPresse.class, ProjectionPresseID); 
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
    
    // Methode pour mettre a jour l'heure d'une projection de presse
    public void updateHeureProjectionPresse(Integer ProjectionPresseID, String heureProj){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        ProjectionPresse projectionOfficielle = (ProjectionPresse)session.get(ProjectionPresse.class, ProjectionPresseID); 
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
    
    //Methode pour supprimer de la base une projection de presse a partir de son id.
    public void deleteProjectionPresse(Integer ProjectionPresseID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            ProjectionPresse projectionPresse = (ProjectionPresse)session.get(ProjectionPresse.class, ProjectionPresseID);
            session.delete(projectionPresse);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
