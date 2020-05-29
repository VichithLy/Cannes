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
@Table(name = "INVITE")
@Inheritance(strategy = InheritanceType.JOINED)
@PrimaryKeyJoinColumn(name = "ID_INVITE")
public class Invite extends Personne implements Serializable {
    
    public Invite(){
    }
    
    public Invite(String nom, String prenom, String profession) {
        super(nom, prenom, profession);
    }
    
    private static final long serialVersionUID = 1L;

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getIdPersonne()!= null ? this.getIdPersonne().hashCode() : 0);
        hash += (this.getNom() != null ? this.getNom().hashCode() : 0);
        hash += (this.getPrenom() != null ? this.getPrenom().hashCode() : 0);
        hash += (this.getProfession() != null ? this.getProfession().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Invite)) {
            return false;
        }
        Invite other = (Invite) object;
        if ((this.getNom() == null && other.getNom() != null) || (this.getNom() != null && !this.getNom().equals(other.getNom()))) {
            return false;
        }
        if ((this.getPrenom() == null && other.getPrenom() != null) || (this.getPrenom() != null && !this.getPrenom().equals(other.getPrenom()))) {
            return false;
        }
        if ((this.getProfession() == null && other.getProfession() != null) || (this.getProfession() != null && !this.getProfession().equals(other.getProfession()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Invite[ id=" + getIdPersonne()+ " ]";
    }
    
}
