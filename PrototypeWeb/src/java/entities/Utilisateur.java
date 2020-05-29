/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Objects;
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
@Table(name = "UTILISATEUR")
public class Utilisateur implements Serializable {
    private int idUtilisateur;
    private String identifiant,passe;

    public Utilisateur() {
    }
    
    public Utilisateur(String identifiant, String passe){
        this.identifiant = identifiant;
        this.passe = passe;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "UTILISATEUR_SEQ", sequenceName = "UTILISATEUR_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "UTILISATEUR_SEQ")
    @Column(name="ID_UTILISATEUR")
    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }
    
    @Column(name="IDENTIFIANT")
    public String getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(String identifiant) {
        this.identifiant = identifiant;
    }
    
    @Column(name="PASSE")
    public String getPasse() {
        return passe;
    }

    public void setPasse(String passe) {
        this.passe = passe;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.idUtilisateur);
        hash = 97 * hash + Objects.hashCode(this.identifiant);
        hash = 97 * hash + Objects.hashCode(this.passe);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Utilisateur other = (Utilisateur) obj;
        if (!Objects.equals(this.identifiant, other.identifiant)) {
            return false;
        }
        if (!Objects.equals(this.passe, other.passe)) {
            return false;
        }
        if (!Objects.equals(this.idUtilisateur, other.idUtilisateur)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Utilisateur{" + "idUtilisateur=" + idUtilisateur + ", identifiant=" + identifiant + ", passe=" + passe + '}';
    }    
}
