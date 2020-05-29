/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Film;
import entities.Jure;
import entities.Jury;
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
public class AccesJury {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesJury MS = new AccesJury();
        
        ArrayList<Integer> films = null;
        Film film1 = new Film("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);
        films.add(film1.getIdFilm());
        
        ArrayList<Integer> jures = null;
        Jure jure1 = new Jure("Belkhatir","Mohammed","Spécialiste en structures de données","belkhat.png","Nord d'Afrique",9000,"Président","Un professeur attentioné, maître du lancée de craie",films,1);
        jures.add(jure1.getIdPersonne());
        
        Integer jury1 = MS.addJury("Court Métrage",jures);

        MS.listeJury();
    
    }
    
    // Methode pour créer un jury dans la base de donnée
    public Integer addJury(String nomCatJury, ArrayList<Integer> jures){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idJury = null;
        
        try {
            tx = session.beginTransaction();
            Jury f = new Jury(nomCatJury, jures);
            idJury = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idJury;
    }
    
    // Methode pour lire toutes les jurys
    public void listeJury() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List jurys = session.createQuery("from Jury").list();
            
            for(Iterator iterator = jurys.iterator(); iterator.hasNext();){
                Jury f = (Jury) iterator.next();
                System.out.println("ID: " + f.getIdJury()+
                        ", Catégorie Jury: "+f.getNomCatJury()+
                        ", Jurés: "+f.getJures());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour la catégorie d'un jury
    public void updateJury(Integer JuryID, String nomCatJury){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jury jury = (Jury)session.get(Jury.class, JuryID); 
        jury.setNomCatJury(nomCatJury);
        session.update(jury);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un jury a partir de son id.
    public void deleteJury(Integer JuryID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Jury jury = (Jury)session.get(Jury.class, JuryID);
            session.delete(jury);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}