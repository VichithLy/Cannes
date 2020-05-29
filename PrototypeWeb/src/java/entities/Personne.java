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
@Table(name = "PERSONNE")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Personne implements Serializable {
    private String nom, prenom, profession;
    private Integer idPersonne;

    public Personne() {
    }
    
    public Personne(String nom, String prenom, String profession){
        this.nom = nom;
        this.prenom = prenom;
        this.profession = profession;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "PERSONNE_SEQ", sequenceName = "P1706375.PERSONNE_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PERSONNE_SEQ")
    
    @Column(name="ID_PERSONNE")
    public Integer getIdPersonne() {
        return idPersonne;
    }

    public void setIdPersonne(int idPersonne) {
        this.idPersonne = idPersonne;
    }
    
    @Column(name="NOM")
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    @Column(name="PRENOM")
    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    @Column(name="PROFESSION")
    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPersonne != null ? idPersonne.hashCode() : 0);
        hash += (nom != null ? nom.hashCode() : 0);
        hash += (prenom != null ? prenom.hashCode() : 0);
        hash += (profession != null ? profession.hashCode() : 0);
        return hash;
    }

     @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categorie)) {
            return false;
        }
        Personne other = (Personne) object;
        if ((this.idPersonne == null && other.idPersonne != null) || (this.idPersonne != null && !this.idPersonne.equals(other.idPersonne))) {
            return false;
        }
        if ((this.nom == null && other.nom != null) || (this.nom != null && !this.nom.equals(other.nom))) {
            return false;
        }
        if ((this.prenom == null && other.prenom != null) || (this.prenom != null && !this.prenom.equals(other.prenom))) {
            return false;
        }
        if ((this.profession == null && other.profession != null) || (this.profession != null && !this.profession.equals(other.profession))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Personne[ id=" + idPersonne + " ]";
    }
    
}
