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
@Table(name = "JURY")
public class Jury implements Serializable {
    private static int compteurJury;
    private String nomCatJury;
    private ArrayList<Integer> jures;
    private Integer idJury;
    
    public Jury(){
    }
    
    public Jury(String nomCatJury, ArrayList<Integer> jures){
        this.idJury = compteurJury;
        compteurJury++;
        this.nomCatJury = nomCatJury;
        this.jures = jures;
    }
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "JURY_SEQ", sequenceName = "P1706375.JURY_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "JURY_SEQ")
    
    @Column(name="NOM_CAT_JURY")
    public String getNomCatJury() {
        return nomCatJury;
    }

    public void setNomCatJury(String nomCatJury) {
        this.nomCatJury = nomCatJury;
    }

    @Column(name="JURES_JURY")
    public ArrayList<Integer> getJures() {
        return jures;
    }

    public void setJures(ArrayList<Integer> jures) {
        this.jures = jures;
    }

    @Column(name="ID_JURY")
    public Integer getIdJury() {
        return idJury;
    }

    public void setIdJury(Integer idJury) {
        this.idJury = idJury;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idJury != null ? idJury.hashCode() : 0);
        hash += (jures != null ? jures.hashCode() : 0);
        hash += (nomCatJury != null ? nomCatJury.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jury)) {
            return false;
        }
        Jury other = (Jury) object;
        if ((this.idJury == null && other.idJury != null) || (this.idJury != null && !this.idJury.equals(other.idJury))) {
            return false;
        }
        if ((this.jures == null && other.jures != null) || (this.jures != null && !this.jures.equals(other.jures))) {
            return false;
        }
        if ((this.nomCatJury == null && other.nomCatJury != null) || (this.nomCatJury != null && !this.nomCatJury.equals(other.nomCatJury))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Jury[ id=" + idJury + " ]";
    }
    
}
