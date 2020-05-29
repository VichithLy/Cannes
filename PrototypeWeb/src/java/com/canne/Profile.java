/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.canne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 *
 * @author Nassim
 */
public class Profile {
    @Autowired
    @Qualifier("student1")
    private Student student;

    public Profile(){
       System.out.println("Inside Profile constructor." );
    }
    public void printAge() {
       System.out.println("Age : " + student.getAge() );
    }
    public void printName() {
       System.out.println("Name : " + student.getName() );
    }
}
