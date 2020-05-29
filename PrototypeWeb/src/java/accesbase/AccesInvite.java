package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Invite;
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
public class AccesInvite {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesInvite MS = new AccesInvite();
        
        Integer inv1 = MS.addInvite("Bizimana","Zacharie","Influenceur");

        MS.listeInvite();
    
    }
    
    // Methode pour créer un invite dans la base de donnée
    public Integer addInvite(String nom, String prenom, String profession){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idInvite = null;
        
        try {
            tx = session.beginTransaction();
            Invite f = new Invite(nom, prenom, profession);
            idInvite = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idInvite;
    }
    
    // Methode pour lire toutes les invites
    public void listeInvite() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List invites = session.createQuery("from Invite").list();
            
            for(Iterator iterator = invites.iterator(); iterator.hasNext();){
                Invite f = (Invite) iterator.next();
                System.out.println("ID: " + f.getIdPersonne()+
                        ", Nom: "+f.getNom()+
                        ", Prénom: "+f.getPrenom()+
                        ", Profession: "+f.getProfession());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom d'un invite
    public void updateNomInvite(Integer InviteID, String nomInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Invite invite = (Invite)session.get(Invite.class, InviteID); 
        invite.setNom(nomInvite);
        session.update(invite);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le prenom d'un invite
    public void updatePrenomInvite(Integer InviteID, String prenomInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Invite invite = (Invite)session.get(Invite.class, InviteID); 
        invite.setPrenom(prenomInvite);
        session.update(invite);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la profession d'un invite
    public void updateProfessionInvite(Integer InviteID, String jobInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Invite invite = (Invite)session.get(Invite.class, InviteID); 
        invite.setProfession(jobInvite);
        session.update(invite);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un invite a partir de son id.
    public void deleteInvite(Integer InviteID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Invite invite = (Invite)session.get(Invite.class, InviteID);
            session.delete(invite);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}