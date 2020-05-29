/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
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
@Table(name = "SALLE")
public class Salle implements Serializable {
    private static int compteurSalle;
    private Integer idSalle,nbPlaces;
    private String nomSalle;

    public Salle() {
    }
    
    public Salle(String nomSalle, int nbPlaces){
        this.idSalle = compteurSalle;
        compteurSalle++;
        this.nomSalle = nomSalle;
        this.nbPlaces = nbPlaces;
    }
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @SequenceGenerator(name = "SALLE_SEQ", sequenceName = "P1706375.SALLE_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SALLE_SEQ")
    @Column(name="ID_SALLE")
    public Integer getIdSalle() {
        return idSalle;
    }

    public void setIdSalle(int idSalle) {
        this.idSalle = idSalle;
    }
    
    @Column(name="NB_PLACE")
    public Integer getNbPlaces() {
        return nbPlaces;
    }

    public void setNbPlaces(int nbPlaces) {
        this.nbPlaces = nbPlaces;
    }
    
    @Column(name="NOM_SALLE")
    public String getNomSalle() {
        return nomSalle;
    }

    public void setNomSalle(String nomSalle) {
        this.nomSalle = nomSalle;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSalle != null ? idSalle.hashCode() : 0);
        hash += (nbPlaces != null ? nbPlaces.hashCode() : 0);
        hash += (nomSalle != null ? nomSalle.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Salle)) {
            return false;
        }
        Salle other = (Salle) object;
        if ((this.idSalle == null && other.idSalle != null) || (this.idSalle != null && !this.idSalle.equals(other.idSalle))) {
            return false;
        }
        if ((this.nbPlaces == null && other.nbPlaces != null) || (this.nbPlaces != null && !this.nbPlaces.equals(other.nbPlaces))) {
            return false;
        }
        if ((this.nomSalle == null && other.nomSalle != null) || (this.nomSalle != null && !this.nomSalle.equals(other.nomSalle))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Salle[ id=" + idSalle + " ]";
    }
    
}
