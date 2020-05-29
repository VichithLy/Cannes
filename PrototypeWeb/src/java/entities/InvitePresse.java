/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "INVITEPRESSE")
@PrimaryKeyJoinColumn(name = "ID_INVITE_PRESSE")
public class InvitePresse extends Invite implements Serializable {
    private String compagnie;
    private Integer niveauAccreditation;
    
    public InvitePresse(){
    }
    
    public InvitePresse(String nom, String prenom, String profession,
            int niveauAccreditation, String compagnie) {
        super(nom, prenom, profession);
        this.niveauAccreditation = niveauAccreditation;
        this.compagnie = compagnie;
    }
    private static final long serialVersionUID = 1L;

    @Column(name="COMPAGNIE")
    public String getCompagnie() {
        return compagnie;
    }

    public void setCompagnie(String compagnie) {
        this.compagnie = compagnie;
    }

    @Column(name="NIVEAU_ACCREDITATION")
    public Integer getNiveauAccreditation() {
        return niveauAccreditation;
    }

    public void setNiveauAccreditation(Integer niveauAccreditation) {
        this.niveauAccreditation = niveauAccreditation;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getNom() != null ? this.getNom().hashCode() : 0);
        hash += (this.getPrenom() != null ? this.getPrenom().hashCode() : 0);
        hash += (this.getProfession() != null ? this.getProfession().hashCode() : 0);
        hash += (compagnie != null ? compagnie.hashCode() : 0);
        hash += (niveauAccreditation != null ? niveauAccreditation.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InvitePresse)) {
            return false;
        }
        InvitePresse other = (InvitePresse) object;
        if ((this.getIdPersonne() == null && other.getIdPersonne() != null) || (this.getIdPersonne() != null && !this.getIdPersonne().equals(other.getIdPersonne()))) {
            return false;
        }
        if ((this.getNom() == null && other.getNom() != null) || (this.getNom() != null && !this.getNom().equals(other.getNom()))) {
            return false;
        }
        if ((this.getPrenom() == null && other.getPrenom() != null) || (this.getPrenom() != null && !this.getPrenom().equals(other.getPrenom()))) {
            return false;
        }
        if ((this.getProfession() == null && other.getProfession() != null) || (this.getProfession() != null && !this.getProfession().equals(other.getProfession()))) {
            return false;
        }
        if ((this.compagnie == null && other.compagnie != null) || (this.compagnie != null && !this.compagnie.equals(other.compagnie))) {
            return false;
        }
        if ((this.niveauAccreditation == null && other.niveauAccreditation != null) || (this.niveauAccreditation != null && !this.niveauAccreditation.equals(other.niveauAccreditation))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.InvitePresse[ id=" + getIdPersonne() + " ]";
    }
    
}
