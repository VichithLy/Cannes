package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Categorie;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Nassim x Son Michel
 */
public class AccesCategorie {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesCategorie MS = new AccesCategorie();
        
        Integer cat1 = MS.addCategorie("Catin");
        Integer catcat2 = MS.addCategorie("4-4-2");
        Integer cat3 = MS.addCategorie("4 rois");
        
        MS.listeCategorie();
    
    }
    
    // Methode pour créer une catégorie dans la base de donnée
    public Integer addCategorie(String nomCategorie){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idCategorie = null;
        
        try {
            tx = session.beginTransaction();
            Categorie c = new Categorie(nomCategorie);
            idCategorie = (Integer) session.save(c);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idCategorie;
    }
    
    // Methode pour lire toutes les catégories
    public void listeCategorie() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List categories = session.createQuery("from Categorie").list();
            
            for(Iterator iterator = categories.iterator(); iterator.hasNext();){
                Categorie c = (Categorie) iterator.next();
                System.out.println("Nom: " + c.getNomCategorie());             
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom d'une catégorie
    public void updateCategorie(Integer CategorieID, String nomCategorie){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Categorie categorie = (Categorie)session.get(Categorie.class, CategorieID); 
        categorie.setNomCategorie(nomCategorie);
        session.update(categorie);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une catégorie a partir de son id.
    public void deleteCategorie(Integer CategorieID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Categorie categorie = (Categorie)session.get(Categorie.class, CategorieID);
            session.delete(categorie);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
