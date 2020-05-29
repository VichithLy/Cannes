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
@Table(name = "MAIL")
public class Mail implements Serializable {
    private int idMail, idVip;
    private String objet, action, contenu;
    private Date dateSortie;
    private final DateFormat df = new SimpleDateFormat("dd-MM-yyyy");

    

    public Mail() {
    }

    public Mail(String objet, String action, String contenu, String dateSortie, int idVip) {
        this.objet = objet;
        this.action = action;
        this.contenu = contenu;
        try {
            this.dateSortie = df.parse(dateSortie);
        } catch (ParseException ex) {
            Logger.getLogger(Film.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.idVip=idVip;
    }
    
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name = "MAIL_SEQ", sequenceName = "MAIL_SEQUENCE")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MAIL_SEQ")
    @Column(name="IDMAIL")
    public int getIdMail() {
        return idMail;
    }

    public void setIdMail(int idMail) {
        this.idMail = idMail;
    }
    @Column(name="IDVIP")
    public int getIdVip() {
        return idVip;
    }

    public void setIdVip(int idVip) {
        this.idVip = idVip;
    }
    @Column(name="OBJET")
    public String getObjet() {
        return objet;
    }

    public void setObjet(String objet) {
        this.objet = objet;
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
