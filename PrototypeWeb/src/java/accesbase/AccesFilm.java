package accesbase;

import static accesbase.HibernateUtil.getSessionFactory;
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
public class AccesFilm {
    private static SessionFactory factory ;
    static{
        factory = getSessionFactory();
    }
    public static void main(String[] args){
        AccesFilm MS = new AccesFilm();
        
        Integer film1 = MS.addFilm("Cars","Les Bagnoles","Disney",2004,"USA",140,"03-10-2006","blabla",3);
        Integer film2 = MS.addFilm("Cheese Falling","La chute d'un frommage blanc dans la neige","Carlos Ghosn",1999,"Japon",150,"09-10-1999","Un frommage blanc a la decouverte du monde a fait l'errur de tomber dans la neige",3);
        Integer film3 = MS.addFilm("Hoola","Catastrophe","Spiellberg",2006,"France",95,"08-02-2006","blabla",3);
        Integer film4 = MS.addFilm("Priest","Prêtre","Disney",2002,"Chine",115,"22-07-2002","Prière qui tourne au drame",3);
        MS.listeFilm();
    
    }
    
    // Methode pour créer un film dans la base de donnée
    public Integer addFilm(String nomFilmOg, String nomFilmFr, String nomRealisateur,
            int anneeProduction, String paysFilm, int duree, String dateSortie,
            String synopsis, int idCategorie){
        Session session = factory.openSession();
        Transaction tx = null;
        Integer idFilm = null;
        
        try {
            tx = session.beginTransaction();
            Film f = new Film(nomFilmOg, nomFilmFr, nomRealisateur, anneeProduction, paysFilm, duree, dateSortie, synopsis, idCategorie);
            idFilm = (Integer) session.save(f);
            tx.commit();
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return idFilm;
    }
    
    public Film selectFilm(int id){
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            List<Film> films = session.createQuery("from Film where idFilm="+id).list();
            tx.commit();
            return films.get(0);
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    
    public Film selectFilmByFrName(String frname){
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            List<Film> films = session.createQuery("from Film where nomFilmFr=\'"+frname.replace("'","''")+"\'").list();
            tx.commit();
            return films.get(0);
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
    
    // Methode pour lire toutes les films
    public List<Film> listeFilm() {
        Session session = factory.openSession();
        Transaction tx = null;
        List<Film> films = new ArrayList<>();

        try {
            tx = session.beginTransaction();
            films = session.createQuery("from Film").list();
            
            films.forEach((f) -> {
                System.out.println("ID: " + f.getIdFilm()+
                        ", Nom Original: "+f.getNomFilmOg()+
                        ", Nom Francais: "+f.getNomFilmFr()+
                        ", Réalisateur: "+f.getNomRealisateur()+
                        ", Année de Production: "+f.getAnneeProduction()+
                        ", Pays: "+f.getPaysFilm()+
                        ", Durée: "+f.getDuree()+
                        ", Date de sortie: "+f.getDateSortie()+
                        ", Synopsis: "+f.getSynopsis()+
                        ", ID Catégorie: "+f.getIdCategorie());
            });
            tx.commit();
            
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return films;
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
