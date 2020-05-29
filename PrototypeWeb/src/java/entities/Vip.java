/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Column;
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
@Table(name = "VIP")
@Inheritance(strategy = InheritanceType.JOINED)
@PrimaryKeyJoinColumn(name = "ID_VIP")
public class Vip extends Personne implements Serializable {
    private String photo, paysVip;
    private Integer coeffImportance, idCompagnon;
    
    public Vip() {
    }
    
    public Vip(String nom, String prenom, String profession, String photo,
            String nationalite, int coeffImportance, int idCompagnon) {
        super(nom, prenom, profession);
        this.photo = photo;
        this.paysVip = nationalite;
        this.coeffImportance = coeffImportance;
        this.idCompagnon = idCompagnon;
    }
    
    private static final long serialVersionUID = 1L;
    
    @Column(name="PHOTO")
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Column(name="PAYS_VIP")
    public String getPaysVip() {
        return paysVip;
    }

    public void setPaysVip(String paysVip) {
        this.paysVip = paysVip;
    }

    @Column(name="COEFF_IMPORTANCE")
    public Integer getCoeffImportance() {
        return coeffImportance;
    }

    public void setCoeffImportance(Integer coeffImportance) {
        this.coeffImportance = coeffImportance;
    }

    @Column(name="ID_COMPAGNON")
    public Integer getIdCompagnon() {
        return idCompagnon;
    }

    public void setIdCompagnon(Integer idCompagnon) {
        this.idCompagnon = idCompagnon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getNom() != null ? this.getNom().hashCode() : 0);
        hash += (this.getPrenom() != null ? this.getPrenom().hashCode() : 0);
        hash += (this.getProfession() != null ? this.getProfession().hashCode() : 0);
        hash += (photo != null ? photo.hashCode() : 0);
        hash += (paysVip != null ? paysVip.hashCode() : 0);
        hash += (coeffImportance != null ? coeffImportance.hashCode() : 0);
        hash += (idCompagnon != null ? idCompagnon.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vip)) {
            return false;
        }
        Vip other = (Vip) object;
        if ((this.getNom() == null && other.getNom() != null) || (this.getNom() != null && !this.getNom().equals(other.getNom()))) {
            return false;
        }
        if ((this.getPrenom() == null && other.getPrenom() != null) || (this.getPrenom() != null && !this.getPrenom().equals(other.getPrenom()))) {
            return false;
        }
        if ((this.getProfession() == null && other.getProfession() != null) || (this.getProfession() != null && !this.getProfession().equals(other.getProfession()))) {
            return false;
        }
        if ((this.photo == null && other.photo != null) || (this.photo != null && !this.photo.equals(other.photo))) {
            return false;
        }
        if ((this.paysVip == null && other.paysVip != null) || (this.paysVip != null && !this.paysVip.equals(other.paysVip))) {
            return false;
        }
        if ((this.coeffImportance == null && other.coeffImportance != null) || (this.coeffImportance != null && !this.coeffImportance.equals(other.coeffImportance))) {
            return false;
        }
        if ((this.getIdCompagnon() == null && other.getIdCompagnon() != null) || (this.getIdCompagnon() != null && !this.getIdCompagnon().equals(other.getIdCompagnon()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Vip[ id=" + super.getIdPersonne() + " ]";
    }
    
}
