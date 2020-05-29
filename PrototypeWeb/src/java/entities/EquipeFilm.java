/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "EQUIPE_FILM")
public class EquipeFilm implements Serializable {
    private Integer idEquipeFilm;
    private String nomFilmEquipe;
    private ArrayList<Integer> membres;
    
    public EquipeFilm(){
    }
    
    public EquipeFilm(String nomFilmEquipe, ArrayList<Integer> membres){
        this.nomFilmEquipe = nomFilmEquipe;
        this.membres = membres;
    }
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @SequenceGenerator(name = "EQUIPE_FILM_SEQ", sequenceName = "P1706375.EQUIPE_FILM_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "EQUIPE_FILM_SEQ")
    @Column(name="ID_EQUIPE_FILM")
    public Integer getIdEquipeFilm() {
        return idEquipeFilm;
    }

    public void setIdEquipeFilm(int idEquipeFilm) {
        this.idEquipeFilm = idEquipeFilm;
    }

    @Column(name="NOM_FILM_EQUIPE")
    public String getNomFilmEquipe() {
        return nomFilmEquipe;
    }

    public void setNomFilmEquipe(String nomFilmEquipe) {
        this.nomFilmEquipe = nomFilmEquipe;
    }

    @Column(name="MEMBRE_EQUIPE_FILM")
    public ArrayList<Integer> getMembres() {
        return membres;
    }

    public void setMembres(ArrayList<Integer> membres) {
        this.membres = membres;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEquipeFilm != null ? idEquipeFilm.hashCode() : 0);
        hash += (nomFilmEquipe != null ? nomFilmEquipe.hashCode() : 0);
        hash += (membres != null ? membres.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EquipeFilm)) {
            return false;
        }
        EquipeFilm other = (EquipeFilm) object;
        if ((this.idEquipeFilm == null && other.idEquipeFilm != null) || (this.idEquipeFilm != null && !this.idEquipeFilm.equals(other.idEquipeFilm))) {
            return false;
        }
        if ((this.nomFilmEquipe == null && other.nomFilmEquipe != null) || (this.nomFilmEquipe != null && !this.nomFilmEquipe.equals(other.nomFilmEquipe))) {
            return false;
        }
        if ((this.membres == null && other.membres != null) || (this.membres != null && !this.membres.equals(other.membres))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.EquipeFilm[ id=" + idEquipeFilm + " ]";
    }
    
}
