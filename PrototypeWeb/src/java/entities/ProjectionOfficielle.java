/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "PROJECTION_OFFICIELLE")
@Inheritance(strategy = InheritanceType.JOINED)
@PrimaryKeyJoinColumn(name = "ID_PROJECTION")
public class ProjectionOfficielle extends Projection implements Serializable {
    
    public ProjectionOfficielle(){
    }
    
    public ProjectionOfficielle(int idFilm, int idSalle, String heureProjection,
            String dateProjection) {
        super(idFilm, idSalle, heureProjection, dateProjection);
    }
    private static final long serialVersionUID = 1L;

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getIdFilm() != null ? this.getIdFilm().hashCode() : 0);
        hash += (this.getIdSalle() != null ? this.getIdSalle().hashCode() : 0);
        hash += (this.getHeureProjection() != null ? this.getHeureProjection().hashCode() : 0);
        hash += (this.getDateProjection() != null ? this.getDateProjection().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProjectionOfficielle)) {
            return false;
        }
        ProjectionOfficielle other = (ProjectionOfficielle) object;
        if ((this.getIdFilm() == null && other.getIdFilm() != null) || (this.getIdFilm() != null && !this.getIdFilm().equals(other.getIdFilm()))) {
            return false;
        }
        if ((this.getIdSalle() == null && other.getIdSalle() != null) || (this.getIdSalle() != null && !this.getIdSalle().equals(other.getIdSalle()))) {
            return false;
        }
        if ((this.getHeureProjection() == null && other.getHeureProjection() != null) || (this.getHeureProjection() != null && !this.getHeureProjection().equals(other.getHeureProjection()))) {
            return false;
        }
        if ((this.getDateProjection() == null && other.getDateProjection() != null) || (this.getDateProjection() != null && !this.getDateProjection().equals(other.getDateProjection()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ProjectionOfficielle{" +super.toString() +'}';
    }


    
}
