package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Utilisateur;
import java.util.Iterator;
import java.util.List;
import model.EncryptionModule;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Nassim x Son Michel
 */
public class AccesUtilisateur {
    private static SessionFactory factory ;
    
    public AccesUtilisateur() {
        factory = getSessionFactory();
    }
    
    public static void main(String[] args){
        factory = getSessionFactory();
        AccesUtilisateur MS = new AccesUtilisateur();
        MS.addUtilisateur("Vichith", "678");
        
//        Integer ut1 = MS.addUtilisateur("Michel","1234");
//        Integer ut2 = MS.addUtilisateur("Chloe","4321");
//        Integer ut3 = MS.addUtilisateur("Yann","5678");
        Utilisateur ut = MS.utilisateur(1);
        MS.listeUtilisateur();
    
    }
    
    // Methode pour créer une catégorie dans la base de donnée
    public Integer addUtilisateur(String identifiant, String passe){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idCategorie = null;
        
        try {
            tx = session.beginTransaction();
            Utilisateur u = new Utilisateur();
            u.setIdentifiant(identifiant);
            EncryptionModule em = new EncryptionModule();
            u.setPasse(em.encrypt(passe));
            idCategorie = (Integer) session.save(u);
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
    public void listeUtilisateur() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List utilisateurs = session.createQuery("from Utilisateur").list();
            
            for(Iterator iterator = utilisateurs.iterator(); iterator.hasNext();){
                Utilisateur u = (Utilisateur) iterator.next();
                System.out.println("Identifiant: " + u.getIdentifiant()+" Passe: "+u.getPasse());             
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour récuperer un utilisateur
    public Utilisateur utilisateur(int id) {
        String query = "FROM Utilisateur WHERE idUtilisateur = "+id;
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            
            List utilisateurs = session.createQuery(query).list();
            
            for(Iterator iterator = utilisateurs.iterator(); iterator.hasNext();){
                Utilisateur u = (Utilisateur) iterator.next();
                System.out.println("Identifiant: " + u.getIdentifiant() + " Passe: " + u.getPasse());
                return u;
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return new Utilisateur();
    }
    
    // Methode pour récuperer un utilisateur
    public Utilisateur utilisateurParIdentifiant(String identifiant) {
        String query = "FROM Utilisateur WHERE identifiant = "+"'"+identifiant+"'";
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            
            List utilisateurs = session.createQuery(query).list();
            
            for(Iterator iterator = utilisateurs.iterator(); iterator.hasNext();){
                Utilisateur u = (Utilisateur) iterator.next();
                System.out.println("Identifiant: " + u.getIdentifiant() + " Passe: " + u.getPasse());
                return u;
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return new Utilisateur();
    }
    
    // Methode pour mettre a jour le nom d'une catégorie
    public void updateUtilisateur(Integer UtilisateurID, String identifiant, String passe){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Utilisateur u = (Utilisateur)session.get(Utilisateur.class, UtilisateurID); 
        u.setIdentifiant(identifiant);
        u.setPasse(passe);
        session.update(u);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une catégorie a partir de son id.
    public void deleteUtilisateur(Integer UtilisateurID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Utilisateur u = (Utilisateur)session.get(Utilisateur.class, UtilisateurID);
            session.delete(u);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
