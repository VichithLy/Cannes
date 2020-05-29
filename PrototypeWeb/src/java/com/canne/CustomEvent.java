/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.canne;

import org.springframework.context.ApplicationEvent;

/**
 *
 * @author Nassim
 */
public class CustomEvent extends ApplicationEvent{
    
    public CustomEvent(Object source) {
        super(source);
    }

    @Override
    public String toString() {
        return "My Custom Event";
    }
    
}
