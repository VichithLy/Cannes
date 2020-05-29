package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Compagnon;
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
public class AccesCompagnon {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesCompagnon MS = new AccesCompagnon();
        
        Integer com1 = MS.addCompagnon("Dinh","Son Michel","Maitre des entités",1);
        Integer com2 = MS.addCompagnon("Macoley","Chloe","Maitre du Spring",1);
        Integer com3 = MS.addCompagnon("Ly","Vichith","Maitre des vannes",1);
        
        MS.listeCompagnon();
    
    }
    
    // Methode pour créer un compagnon dans la base de donnée
    public Integer addCompagnon(String nom, String prenom, String profession,
            int idPartenaire){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idCompagnon = null;
        
        try {
            tx = session.beginTransaction();
            Compagnon c = new Compagnon(nom, prenom, profession, idPartenaire);
            idCompagnon = (Integer) session.save(c);
//            session.persist(c);
            System.out.println("id"+idCompagnon);
            System.out.println(c);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idCompagnon;
    }
    
    // Methode pour lire toutes les compagnons
    public void listeCompagnon() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List compagnon = session.createQuery("from Compagnon").list();
            
            for(Iterator iterator = compagnon.iterator(); iterator.hasNext();){
                Compagnon c = (Compagnon) iterator.next();
                System.out.println("Nom: " + c.getNom()+
                        " Prénom: "+ c.getPrenom() +
                        " Profession: "+ c.getProfession() +
                        " ID partenaire: "+ c.getIdPartenaire());         
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le partenaire d'un compagnon
    public void updateCompagnon(Integer CompagnonID, Integer PartenaireID){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Compagnon compagnon = (Compagnon)session.get(Compagnon.class, CompagnonID); 
        compagnon.setIdPartenaire(PartenaireID);
        session.update(compagnon);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un compagnon a partir de son id.
    public void deleteCompagnon(Integer CompagnonID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Compagnon compagnon = (Compagnon)session.get(Compagnon.class, CompagnonID);
            session.delete(compagnon);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
