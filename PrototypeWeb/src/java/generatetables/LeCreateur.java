/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package generatetables;

import entities.Salle;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author p1709386
 */
public class LeCreateur {
    
    public static void main(String args[]){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("PrototypeWebPU");
        EntityManager manager = factory.createEntityManager();
    
        manager.getTransaction().begin();
        
        manager.persist(new Salle("S14", 500));
        
        manager.getTransaction().commit();
    }
}
