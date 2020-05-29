package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
import entities.Fax;
import entities.Film;
import java.util.ArrayList;
import java.util.Date;
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
public class AccesFax {
    private static SessionFactory factory ;

    public AccesFax() {
        factory = getSessionFactory();

    }
    
    public static void main(String[] args){
        
        AccesFax af = new AccesFax();
        
        int fax1 = af.addFax("0647391811", "monté plat chambre", "pourriez vous me monter...","20-01-2019", 1350);

        af.listeFax();
    
    }
    
    // Methode pour créer un film dans la base de donnée
    public int addFax(String numéro, String action, String contenu, String dateSortie, int idVip){
        Session session = factory.openSession();
        Transaction tx = null;
        int idFax = 0;
        
        try {
            tx = session.beginTransaction();
            Fax f = new Fax(numéro, action, contenu, dateSortie, idVip);
            idFax = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idFax;
    }
    
    // Methode pour lire toutes les films
    public List<Fax> listeFax() {
        Session session = factory.openSession();
        Transaction tx = null;
        List<Fax> faxs =new ArrayList<>();
        try {
            tx = session.beginTransaction();
            List fax = session.createQuery("from Fax").list();
            
            for(Iterator iterator = fax.iterator(); iterator.hasNext();){
                Fax m = (Fax) iterator.next();
                faxs.add(m);
                System.out.println("ID: " + m.getIdFax()+
                        ", contenu: "+m.getContenu()+
                        ",numéro: "+m.getNuméro()+
                        ", action: "+m.getAction()+
                        ", date sortie: "+m.getDateSortie()+
                        ", idvip: "+m.getIdVip());
            }
            tx.commit();
            return faxs;
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    public List<Fax> listeFaxId(int id) {
        Session session = factory.openSession();
        Transaction tx = null;
        List<Fax> faxs =new ArrayList<>();
        try {
            tx = session.beginTransaction();
            List fax = session.createQuery("from Fax where idVip="+id).list();
            
            for(Iterator iterator = fax.iterator(); iterator.hasNext();){
                Fax m = (Fax) iterator.next();
                faxs.add(m);
                System.out.println("ID: " + m.getIdFax()+
                        ", contenu: "+m.getContenu()+
                        ",numéro: "+m.getNuméro()+
                        ", action: "+m.getAction()+
                        ", date sortie: "+m.getDateSortie()+
                        ", idvip: "+m.getIdVip());
            }
            tx.commit();
            return faxs;
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    // Methode pour mettre a jour le nom original d'un film
    public void updateNomFilmOg(Integer FilmID, String nomFilmOg){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setNomFilmOg(nomFilmOg);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le nom francais d'un film
    public void updateNomFilmFr(Integer FilmID, String nomFilmFr){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setNomFilmFr(nomFilmFr);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le realisateur d'un film
    public void updateRealisateurFilm(Integer FilmID, String nomRealisateur){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setNomRealisateur(nomRealisateur);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour l'annee de production d'un film
    public void updateAnneeFilm(Integer FilmID, Integer anneeProduction){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setAnneeProduction(anneeProduction);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le pays d'un film
    public void updatePaysFilm(Integer FilmID, String paysFilm){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setPaysFilm(paysFilm);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la duree d'un film
    public void updateDureeFilm(Integer FilmID, Integer duree){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setDuree(duree);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la date d'un film
    public void updateDateFilm(Integer FilmID, Date dateSortie){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setDateSortie(dateSortie);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour le synopsis d'un film
    public void updateSynopsisFilm(Integer FilmID, String synopsis){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setSynopsis(synopsis);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    // Methode pour mettre a jour la catégorie d'un film
    public void updateCatFilm(Integer FilmID, Integer idCategorie){
      Session session = factory.openSession();
      Transaction tx = null;
      
      try {
        tx = session.beginTransaction();
        Film film = (Film)session.get(Film.class, FilmID); 
        film.setIdCategorie(idCategorie);
        session.update(film);
         tx.commit();
      } catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      } finally {
         session.close(); 
      }
   }
    
    //Methode pour supprimer de la base une Film a partir de son id.
    public void deleteFilm(Integer FilmID){
        Session session = factory.openSession();
        Transaction tx = null;
      
        try {
            tx = session.beginTransaction();
            Film film = (Film)session.get(Film.class, FilmID);
            session.delete(film);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close(); 
      }
   }
}
