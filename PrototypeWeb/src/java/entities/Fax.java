/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@Table(name = "FAX")
public class Fax implements Serializable {
    private int idFax, idVip;
    private String numéro, action, contenu;
    private Date dateSortie;
    private final DateFormat df = new SimpleDateFormat("dd-MM-yyyy");

    

    public Fax() {
    }

    public Fax(String numéro, String action, String contenu, String dateSortie, int idVip) {
        this.numéro = numéro;
        this.action = action;
        this.contenu = contenu;
        try {
            this.dateSortie = df.parse(dateSortie);
        } catch (ParseException ex) {
            Logger.getLogger(Fax.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.idVip=idVip;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "FAX_SEQ", sequenceName = "FAX_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FAX_SEQ")
    @Column(name="IDFAX")
    public int getIdFax() {
        return idFax;
    }

    public void setIdFax(int idFax) {
        this.idFax= idFax;
    }
    @Column(name="IDVIP")
    public int getIdVip() {
        return idVip;
    }

    public void setIdVip(int idVip) {
        this.idVip = idVip;
    }
    @Column(name="NUMERO")
    public String getNuméro() {
        return numéro;
    }

    public void setNuméro(String numéro) {
        this.numéro = numéro;
    }
    @Column(name="ACTION")
    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
    @Column(name="CONTENU")
    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }
    @Column(name="DATESORTIE")
    public Date getDateSortie() {
        return dateSortie;
    }

    public void setDateSortie(Date dateSortie) {
        this.dateSortie = dateSortie;
    }
    
}
