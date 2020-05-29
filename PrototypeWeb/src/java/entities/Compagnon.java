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
@Table(name = "COMPAGNON")
@PrimaryKeyJoinColumn(name = "ID_COMPAGNON")
public class Compagnon extends Personne implements Serializable {
    private Integer idPartenaire;

    public Compagnon(){
    }
    
    public Compagnon(String nom, String prenom, String profession,
            int idPartenaire) {
        super(nom, prenom, profession);
        this.idPartenaire = idPartenaire;
    }
    
    private static final long serialVersionUID = 1L;
    
    @Column(name="ID_PARTENAIRE")
    public Integer getIdPartenaire() {
        return idPartenaire;
    }

    public void setIdPartenaire(int idPartenaire) {
        this.idPartenaire = idPartenaire;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getNom() != null ? this.getNom().hashCode() : 0);
        hash += (this.getPrenom() != null ? this.getPrenom().hashCode() : 0);
        hash += (this.getProfession() != null ? this.getProfession().hashCode() : 0);
        hash += (idPartenaire != null ? idPartenaire.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compagnon)) {
            return false;
        }
        Compagnon other = (Compagnon) object;
        if ((this.getNom() == null && other.getNom() != null) || (this.getNom() != null && !this.getNom().equals(other.getNom()))) {
            return false;
        }
        if ((this.getPrenom() == null && other.getPrenom() != null) || (this.getPrenom() != null && !this.getPrenom().equals(other.getPrenom()))) {
            return false;
        }
        if ((this.getProfession() == null && other.getProfession() != null) || (this.getProfession() != null && !this.getProfession().equals(other.getProfession()))) {
            return false;
        }
        if ((this.idPartenaire == null && other.idPartenaire != null) || (this.idPartenaire != null && !this.idPartenaire.equals(other.idPartenaire))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Compagnon[ id=" + getIdPersonne() + ", Nom: "+getNom()+
                ", Prenom: "+getPrenom()+", Profession: "+getProfession()+
                ", Id Partenaire: "+getIdPartenaire()+" ]";
    }
    
}
