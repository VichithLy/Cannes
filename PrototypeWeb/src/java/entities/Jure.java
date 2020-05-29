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
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author p1709386
 */
@Entity
@Table(name = "JURE")
@Inheritance(strategy = InheritanceType.JOINED)
@PrimaryKeyJoinColumn(name = "ID_JURE")
public class Jure extends Vip implements Serializable {
    private String roleJure, biographie;
    private ArrayList<Integer> filmPresentes = new ArrayList<>();
    
    public Jure() {
    }
    
    public Jure(String nom, String prenom, String profession, String photo,
            String paysJure, int coeffImportance, String roleJure,
            String biographie, ArrayList<Integer> filmPresentes, int idCompagnon) {
        super(nom, prenom, profession, photo, paysJure, coeffImportance,
                idCompagnon);
        this.roleJure = roleJure;
        this.biographie = biographie;
        this.filmPresentes = filmPresentes;
    }
    
    private static final long serialVersionUID = 1L;

    @Column(name="ROLE_JURE")
    public String getRoleJure() {
        return roleJure;
    }

    public void setRoleJure(String roleJure) {
        this.roleJure = roleJure;
    }

    @Column(name="BIOGRAPHIE_JURE")
    public String getBiographie() {
        return biographie;
    }

    public void setBiographie(String biographie) {
        this.biographie = biographie;
    }
    
    @Column(name="FILMS_JURE")
    public ArrayList<Integer> getFilmPresentes() {
        return filmPresentes;
    }

    public void setFilmPresentes(ArrayList<Integer> filmPresentes) {
        this.filmPresentes = filmPresentes;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (this.getNom() != null ? this.getNom().hashCode() : 0);
        hash += (this.getPrenom() != null ? this.getPrenom().hashCode() : 0);
        hash += (this.getProfession() != null ? this.getProfession().hashCode() : 0);
        hash += (this.getPhoto() != null ? this.getPhoto().hashCode() : 0);
        hash += (this.getPaysVip() != null ? this.getPaysVip().hashCode() : 0);
        hash += (this.getCoeffImportance() != null ? this.getCoeffImportance().hashCode() : 0);
        hash += (this.getIdCompagnon() != null ? this.getIdCompagnon().hashCode() : 0);
        hash += (roleJure != null ? roleJure.hashCode() : 0);
        hash += (biographie != null ? biographie.hashCode() : 0);
        hash += (filmPresentes != null ? filmPresentes.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jure)) {
            return false;
        }
        Jure other = (Jure) object;
        if ((this.getNom() == null && other.getNom() != null) || (this.getNom() != null && !this.getNom().equals(other.getNom()))) {
            return false;
        }
        if ((this.getPrenom() == null && other.getPrenom() != null) || (this.getPrenom() != null && !this.getPrenom().equals(other.getPrenom()))) {
            return false;
        }
        if ((this.getProfession() == null && other.getProfession() != null) || (this.getProfession() != null && !this.getProfession().equals(other.getProfession()))) {
            return false;
        }
        if ((this.getPhoto() == null && other.getPhoto() != null) || (this.getPhoto() != null && !this.getPhoto().equals(other.getPhoto()))) {
            return false;
        }
        if ((this.getPaysVip() == null && other.getPaysVip() != null) || (this.getPaysVip() != null && !this.getPaysVip().equals(other.getPaysVip()))) {
            return false;
        }
        if ((this.getCoeffImportance() == null && other.getCoeffImportance() != null) || (this.getCoeffImportance() != null && !this.getCoeffImportance().equals(other.getCoeffImportance()))) {
            return false;
        }
        if ((this.getIdCompagnon() == null && other.getIdCompagnon() != null) || (this.getIdCompagnon() != null && !this.getIdCompagnon().equals(other.getIdCompagnon()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Jure[ id=" + super.getIdPersonne()+ " ]";
    }
    
}
