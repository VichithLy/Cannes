package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Film;
import entities.Jure;
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
public class AccesJure {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesJure MS = new AccesJure();
        
        ArrayList<Integer> films = null;
        Film film1 = new Film("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);
        films.add(film1.getIdFilm());
        
        Integer jure1 = MS.addJure("Belkhatir","Mohammed","Spécialiste en structures de données","belkhat.png","Nord d'Afrique",9000,"Président","Un professeur attentioné, maître du lancée de craie",films,1);

        MS.listeJure();
    
    }
    
    // Methode pour créer un jure dans la base de donnée
    public Integer addJure(String nom, String prenom, String profession, String photo,
            String paysVip, int coeffImportance, String roleJure,
            String biographie, ArrayList<Integer> filmPresentes, int idCompagnon){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idJure = null;
        
        try {
            tx = session.beginTransaction();
            Jure f = new Jure(nom, prenom, profession, photo, paysVip, coeffImportance,roleJure,biographie,filmPresentes,
                idCompagnon);
            idJure = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idJure;
    }
    
    // Methode pour lire toutes les jures
    public void listeJure() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List jures = session.createQuery("from Jure").list();
            
            for(Iterator iterator = jures.iterator(); iterator.hasNext();){
                Jure f = (Jure) iterator.next();
                System.out.println("ID: " + f.getIdPersonne()+
                        ", Nom: "+f.getNom()+
                        ", Prénom: "+f.getPrenom()+
                        ", Profession: "+f.getProfession()+
                        ", Photo: "+f.getPhoto()+
                        ", Pays: "+f.getPaysVip()+
                        ", Coefficient d'importance: "+f.getCoeffImportance()+
                        ", Rôle dans le jury: "+f.getRoleJure()+
                        ", Biographie: "+f.getBiographie()+
                        ", Film présentés: "+f.getFilmPresentes()+
                        ", ID Compagnon: "+f.getIdCompagnon());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom d'un jure
    public void updateNomJure(Integer JureID, String nomJure){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setNom(nomJure);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le nom d'un jure
    public void updatePrenomJure(Integer JureID, String nomJure){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setNom(nomJure);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le prenom d'un jure
    public void updateProfessionJure(Integer JureID, String prenomJure){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setPrenom(prenomJure);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la photo d'un jure
    public void updatePhotoJure(Integer JureID, String photo){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setPhoto(photo);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le pays d'un jure
    public void updatePaysJure(Integer JureID, String paysJure){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setPaysVip(paysJure);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le coefficient d'importance d'un jure
    public void updateCoeffJure(Integer JureID, int coeffImportance){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setCoeffImportance(coeffImportance);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le role d'un jure
    public void updateRoleJure(Integer JureID, String roleJure){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setRoleJure(roleJure);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la biographie d'un jure
    public void updateBiographieJure(Integer JureID, String biographie){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setBiographie(biographie);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le compagnon d'un jure
    public void updateCompagnonJure(Integer JureID, int idCompagnon){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Jure jure = (Jure)session.get(Jure.class, JureID); 
        jure.setIdCompagnon(idCompagnon);
        session.update(jure);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un jure a partir de son id.
    public void deleteJure(Integer JureID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Jure jure = (Jure)session.get(Jure.class, JureID);
            session.delete(jure);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}