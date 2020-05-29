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
@Table(name = "CATEGORIE")
public class Categorie implements Serializable {
    private static int compteurCategorie;
    private Integer idCategorie;
    private String nomCategorie;

    public Categorie() {
    }
    
    public Categorie(String nomCategorie){
        this.idCategorie = compteurCategorie;
        compteurCategorie++;
        this.nomCategorie = nomCategorie;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "CATEGORIE_SEQ", sequenceName = "CATEGORIE_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CATEGORIE_SEQ")
    
    @Column(name="ID_CATEGORIE")
    public Integer getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }
    
    @Column(name="NOM_CATEGORIE")
    public String getNomCategorie() {
        return nomCategorie;
    }

    public void setNomCategorie(String nomCategorie) {
        this.nomCategorie = nomCategorie;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCategorie != null ? idCategorie.hashCode() : 0);
        hash += (nomCategorie != null ? nomCategorie.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categorie)) {
            return false;
        }
        Categorie other = (Categorie) object;
        if ((this.idCategorie == null && other.idCategorie != null) || (this.idCategorie != null && !this.idCategorie.equals(other.idCategorie))) {
            return false;
        }
        if ((this.nomCategorie == null && other.nomCategorie != null) || (this.nomCategorie != null && !this.nomCategorie.equals(other.nomCategorie))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Categorie[ id=" + idCategorie + "\t nom catégorie="+ nomCategorie+" ]\n";
    }
    
}
