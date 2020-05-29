package com.canne;

import org.springframework.context.ApplicationListener;

/**
 *
 * @author Nassim
 */
public class CustomEventHandler implements ApplicationListener<CustomEvent>{

    @Override
    public void onApplicationEvent(CustomEvent event) {
        System.out.println(event.toString());
    }
}
