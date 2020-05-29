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
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "PROJECTION")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Projection implements Serializable {
    private static int compteurProjection;
    private Integer idProjection, idFilm, idSalle;
    private String heureProjection, dateProjection;

    public Projection() {
    }
    
    public Projection(int idFilm, int idSalle , String heureProjection,
            String dateProjection){
        this.idProjection = compteurProjection;
        compteurProjection++;
        this.idFilm = idFilm;
        this.idSalle = idSalle;
        this.heureProjection = heureProjection;
        this.dateProjection = dateProjection;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "PROJECTION_SEQ", sequenceName = "P1706375.PROJECTION_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PROJECTION_SEQ")
    
    @Column(name="ID_PROJECTION")
    public Integer getIdProjection() {
        return idProjection;
    }

    public void setIdProjection(Integer idProjection) {
        this.idProjection = idProjection;
    }
    
    @Column(name="ID_FILM")
    public Integer getIdFilm() {
        return idFilm;
    }

    public void setIdFilm(Integer idFilm) {
        this.idFilm = idFilm;
    }
    
    @Column(name="ID_SALLE")
    public Integer getIdSalle() {
        return idSalle;
    }

    public void setIdSalle(Integer idSalle) {
        this.idSalle = idSalle;
    }
    
    @Column(name="HEURE_PROJECTION")
    public String getHeureProjection() {
        return heureProjection;
    }
    
    public void setHeureProjection(String heureProjection) {
        this.heureProjection = heureProjection;
    }
    
    @Column(name="DATE_PROJECTION")
    public String getDateProjection() {
        return dateProjection;
    }

    public void setDateProjection(String dateProjection) {
        this.dateProjection = dateProjection;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProjection != null ? idProjection.hashCode() : 0);
        hash += (idFilm != null ? idFilm.hashCode() : 0);
        hash += (idSalle != null ? idSalle.hashCode() : 0);
        hash += (heureProjection != null ? heureProjection.hashCode() : 0);
        hash += (dateProjection != null ? dateProjection.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Projection)) {
            return false;
        }
        Projection other = (Projection) object;
        if ((this.idProjection == null && other.idProjection != null) || (this.idProjection != null && !this.idProjection.equals(other.idProjection))) {
            return false;
        }
        if ((this.idFilm == null && other.idFilm != null) || (this.idFilm != null && !this.idFilm.equals(other.idFilm))) {
            return false;
        }
        if ((this.idSalle == null && other.idSalle != null) || (this.idSalle != null && !this.idSalle.equals(other.idSalle))) {
            return false;
        }
        if ((this.heureProjection == null && other.heureProjection != null) || (this.heureProjection != null && !this.heureProjection.equals(other.heureProjection))) {
            return false;
        }
        if ((this.dateProjection == null && other.dateProjection != null) || (this.dateProjection != null && !this.dateProjection.equals(other.dateProjection))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Projection[ id=" + idProjection + " ]";
    }
    
}
