/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
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
public class AccesSalle {
    private static SessionFactory factory ;
    static{
        factory = getSessionFactory();
    }
    public static void main(String[] args){
        AccesSalle MS = new AccesSalle();
        Integer salle1 = MS.addSalle("Cinéma Gérard Philippe Vénissieux 69200", 815);
        MS.listeSalle();
    }
    
    // Methode pour créer un Salle dans la base de donnée
    public Integer addSalle(String nomSalle, int nbPlaces){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idSalle = null;
        
        try {
            tx = session.beginTransaction();
            Salle f = new Salle(nomSalle, nbPlaces);
            idSalle = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idSalle;
    }
    
    public Salle selectSalle(int id){
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            List<Salle> salles = session.createQuery("from Salle where idSalle="+id).list();
            tx.commit();
            return salles.get(0);
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    
    // Methode pour lire toutes les salles
    public void listeSalle() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List salles = session.createQuery("from Salle").list();
            
            for(Iterator iterator = salles.iterator(); iterator.hasNext();){
                Salle f = (Salle) iterator.next();
                System.out.println("ID: " + f.getIdSalle()+
                        ", Nom: "+f.getNomSalle()+
                        ", Nombre de places: "+f.getNbPlaces());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom d'une salle
    public void updateNomSalle(Integer SalleID, String nomSalle){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Salle salle = (Salle)session.get(Salle.class, SalleID); 
        salle.setNomSalle(nomSalle);
        session.update(salle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le nombre de places d'une salle
    public void updatePlaceSalle(Integer SalleID, int nbPlaces){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Salle salle = (Salle)session.get(Salle.class, SalleID); 
        salle.setNbPlaces(nbPlaces);
        session.update(salle);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une Salle a partir de son id.
    public void deleteSalle(Integer SalleID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Salle salle = (Salle)session.get(Salle.class, SalleID);
            session.delete(salle);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
