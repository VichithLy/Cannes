/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "FILM")
public class Film implements Serializable {
    private String nomFilmOg, nomFilmFr, nomRealisateur, paysFilm, synopsis;
    private Date dateSortie;
    private Integer idFilm, anneeProduction, duree, idCategorie;
    private DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
    
    public Film(){
    }
    
    public Film(String nomFilmOg, String nomFilmFr, String nomRealisateur,
            int anneeProduction, String paysFilm, int duree, String dateSortie,
            String synopsis, int idCategorie){
        this.nomFilmOg = nomFilmOg;
        this.nomFilmFr = nomFilmFr;
        this.nomRealisateur = nomRealisateur;
        this.anneeProduction = anneeProduction;
        this.paysFilm = paysFilm;
        this.duree = duree;
        this.synopsis = synopsis;
        this.idCategorie = idCategorie;
        try {
            this.dateSortie = df.parse(dateSortie);
        } catch (ParseException ex) {
            Logger.getLogger(Film.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "FILM_SEQ", sequenceName = "P1706375.FILM_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FILM_SEQ")
    
    @Column(name="ID_FILM")
    public Integer getIdFilm() {
        return idFilm;
    }

    public void setIdFilm(Integer idFilm) {
        this.idFilm = idFilm;
    }
    
    @Column(name="NOM_FILM_OG")
    public String getNomFilmOg() {
        return nomFilmOg;
    }

    public void setNomFilmOg(String nomFilmOg) {
        this.nomFilmOg = nomFilmOg;
    }

    @Column(name="NOM_FILM_FR")
    public String getNomFilmFr() {
        return nomFilmFr;
    }

    public void setNomFilmFr(String nomFilmFr) {
        this.nomFilmFr = nomFilmFr;
    }

    @Column(name="NOM_REALISATEUR")
    public String getNomRealisateur() {
        return nomRealisateur;
    }

    public void setNomRealisateur(String nomRealisateur) {
        this.nomRealisateur = nomRealisateur;
    }

    @Column(name="PAYS_FILM")
    public String getPaysFilm() {
        return paysFilm;
    }

    public void setPaysFilm(String paysFilm) {
        this.paysFilm = paysFilm;
    }

    @Column(name="DATE_SORTIE")
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getDateSortie() {
        return dateSortie;
    }

    public void setDateSortie(Date dateSortie) {
        this.dateSortie = dateSortie;
    }

    @Column(name="SYNOPSIS")
    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    @Column(name="ANNEE_PRODUCTION")
    public Integer getAnneeProduction() {
        return anneeProduction;
    }

    public void setAnneeProduction(Integer anneeProduction) {
        this.anneeProduction = anneeProduction;
    }

    @Column(name="DUREE")
    public Integer getDuree() {
        return duree;
    }

    public void setDuree(Integer duree) {
        this.duree = duree;
    }

    @Column(name="ID_CATEGORIE")
    public Integer getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(Integer idCategorie) {
        this.idCategorie = idCategorie;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFilm != null ? idFilm.hashCode() : 0);
        hash += (nomFilmOg != null ? nomFilmOg.hashCode() : 0);
        hash += (nomFilmFr != null ? nomFilmFr.hashCode() : 0);
        hash += (nomRealisateur != null ? nomRealisateur.hashCode() : 0);
        hash += (anneeProduction != null ? anneeProduction.hashCode() : 0);
        hash += (paysFilm != null ? paysFilm.hashCode() : 0);
        hash += (duree != null ? duree.hashCode() : 0);
        hash += (dateSortie != null ? dateSortie.hashCode() : 0);
        hash += (synopsis != null ? synopsis.hashCode() : 0);
        hash += (idCategorie != null ? idCategorie.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the idFilm fields are not set
        if (!(object instanceof Film)) {
            return false;
        }
        Film other = (Film) object;
        if ((this.idFilm == null && other.idFilm != null) || (this.idFilm != null && !this.idFilm.equals(other.idFilm))) {
            return false;
        }
        if ((this.nomFilmOg == null && other.nomFilmOg != null) || (this.nomFilmOg != null && !this.nomFilmOg.equals(other.nomFilmOg))) {
            return false;
        }
        if ((this.nomFilmFr == null && other.nomFilmFr != null) || (this.nomFilmFr != null && !this.nomFilmFr.equals(other.nomFilmFr))) {
            return false;
        }
        if ((this.nomRealisateur == null && other.nomRealisateur != null) || (this.nomRealisateur != null && !this.nomRealisateur.equals(other.nomRealisateur))) {
            return false;
        }
        if ((this.anneeProduction == null && other.anneeProduction != null) || (this.anneeProduction != null && !this.anneeProduction.equals(other.anneeProduction))) {
            return false;
        }
        if ((this.paysFilm == null && other.paysFilm != null) || (this.paysFilm != null && !this.paysFilm.equals(other.paysFilm))) {
            return false;
        }
        if ((this.duree == null && other.duree != null) || (this.duree != null && !this.duree.equals(other.duree))) {
            return false;
        }
        if ((this.dateSortie == null && other.dateSortie != null) || (this.dateSortie != null && !this.dateSortie.equals(other.dateSortie))) {
            return false;
        }
        if ((this.synopsis == null && other.synopsis != null) || (this.synopsis != null && !this.synopsis.equals(other.synopsis))) {
            return false;
        }
        if ((this.idCategorie == null && other.idCategorie != null) || (this.idCategorie != null && !this.idCategorie.equals(other.idCategorie))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Film[ idFilm=" + idFilm +"ID: " + getIdFilm()+
                        ", Nom Original: "+getNomFilmOg()+
                        ", Nom Francais: "+getNomFilmFr()+
                        ", Réalisateur: "+getNomRealisateur()+
                        ", Année de Production: "+getAnneeProduction()+
                        ", Pays: "+getPaysFilm()+
                        ", Durée: "+getDuree()+
                        ", Date de sortie: "+getDateSortie()+
                        ", Synopsis: "+getSynopsis()+
                        ", ID Catégorie: "+getIdCategorie()+" ]";
    }
    
}
