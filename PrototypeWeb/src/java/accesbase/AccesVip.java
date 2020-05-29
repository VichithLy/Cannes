/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Vip;
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
public class AccesVip {
    private static SessionFactory factory;

    public AccesVip() {
        factory = getSessionFactory();
    }
    
    public static void main(String[] args){
        
        AccesVip MS = new AccesVip();

        MS.listeVip();
    
    }
    
    
    // Methode pour créer un VIP dans la base de donnée
    public Integer addVip(String nom, String prenom, String profession, String photo,
            String nationalite, int coeffImportance, int idCompagnon){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idVip = null;
        
        try {
            tx = session.beginTransaction();
            Vip f = new Vip(nom, prenom, profession, photo, nationalite, coeffImportance, idCompagnon);
            idVip = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idVip;
    }
    
    // Methode pour selectionner et retourner un unique VIP
    public Vip selectVip(int id){
        Session session = factory.openSession();
        Transaction  tx = null;
        try {
            tx = session.beginTransaction();
            List<Vip> vip = session.createQuery("from Vip where idPersonne="+id).list();
            Vip v = vip.get(0);
            return v;
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
        
    }
    
    // Methode pour lire toutes les VIPs
    public List listeVip() {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            List vip = session.createQuery("from Vip").list();
            
            for(Iterator iterator = vip.iterator(); iterator.hasNext();){
                Vip f = (Vip) iterator.next();
                System.out.println("ID: " + f.getIdPersonne()+
                        ", Nom: "+f.getNom()+
                        ", Prénom: "+f.getPrenom()+
                        ", Profession: "+f.getProfession()+
                        ", Photo: "+f.getPhoto()+
                        ", Nationalité: "+f.getPaysVip()+
                        ", Coefficient d'importance: "+f.getCoeffImportance()+
                        ", ID Compagnon: "+f.getIdCompagnon());
            }
            tx.commit();
            return vip;
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    
    // Methode pour mettre a jour le nom d'un VIP
    public void updateNomVip(Integer VipID, String nomVip){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setNom(nomVip);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le prenom d'un VIP
    public void updatePrenomVip(Integer VipID, String prenomVip){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setPrenom(prenomVip);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la profession d'un VIP
    public void updateProfessionVip(Integer VipID, String jobVip){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setProfession(jobVip);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la photo d'un VIP
    public void updatePhotoVip(Integer VipID, String photo){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setPhoto(photo);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le pays d'un VIP
    public void updatePaysVip(Integer VipID, String paysVip){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setPaysVip(paysVip);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le coefficient d'importance d'un VIP
    public void updateCoeffVip(Integer VipID, int coeffImportance){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setCoeffImportance(coeffImportance);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le compagnon d'un VIP
    public void updateCompagnonVip(Integer VipID, int idCompagnon){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Vip vip = (Vip)session.get(Vip.class, VipID); 
        vip.setIdCompagnon(idCompagnon);
        session.update(vip);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base un VIP a partir de son id.
    public void deleteVip(Integer VipID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Vip vip = (Vip)session.get(Vip.class, VipID);
            session.delete(vip);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}