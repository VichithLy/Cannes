package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.InvitePresse;
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
public class AccesInvitePresse {
    private static SessionFactory factory ;
    public static void main(String[] args){
        
        factory = getSessionFactory();
        AccesInvitePresse MS = new AccesInvitePresse();
        
        Integer invPres1 = MS.addInvitePresse("Parker","Peter","Photographe",666,"Daily Bugle");

        MS.listeInvitePresse();
    
    }
    
    // Methode pour créer un invite de presse dans la base de donnée
    public Integer addInvitePresse(String nom, String prenom, String profession,
            int niveauAccreditation, String compagnie){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idInvitePresse = null;
        
        try {
            tx = session.beginTransaction();
            InvitePresse f = new InvitePresse(nom, prenom, profession, niveauAccreditation, compagnie);
            idInvitePresse = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idInvitePresse;
    }
    
    // Methode pour lire toutes les invites de presse
    public void listeInvitePresse() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List invitesPresse = session.createQuery("from InvitePresse").list();
            
            for(Iterator iterator = invitesPresse.iterator(); iterator.hasNext();){
                InvitePresse f = (InvitePresse) iterator.next();
                System.out.println("ID: " + f.getIdPersonne()+
                        ", Nom: "+f.getNom()+
                        ", Prénom: "+f.getPrenom()+
                        ", Profession: "+f.getProfession()+
                        ", Niveau d'accréditation: "+f.getNiveauAccreditation()+
                        ", Compagnie: "+f.getCompagnie());
            }
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Methode pour mettre a jour le nom d'un invite de presse
    public void updateNomInvitePresse(Integer InviteID, String nomInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID); 
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
    
    // Methode pour mettre a jour le prenom d'un invite de presse
    public void updatePrenomInvitePresse(Integer InviteID, String prenomInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID); 
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
    
    // Methode pour mettre a jour la profession d'un invite de presse
    public void updateProfessionInvitePresse(Integer InviteID, String jobInvite){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID); 
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
    
    // Methode pour mettre a jour le niveau d'accreditation d'un invite de presse
    public void updateNiveauInvitePresse(Integer InviteID, int niveauAccreditation){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID); 
        invite.setNiveauAccreditation(niveauAccreditation);
        session.update(invite);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    
    // Methode pour mettre a jour la compagnie d'un invite de presse
    public void updateCompagnieInvitePresse(Integer InviteID, String compagnie){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID); 
        invite.setCompagnie(compagnie);
        session.update(invite);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un invite de presse a partir de son id.
    public void deleteInvitePresse(Integer InviteID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            InvitePresse invite = (InvitePresse)session.get(InvitePresse.class, InviteID);
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