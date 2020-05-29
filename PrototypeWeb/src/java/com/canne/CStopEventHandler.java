package com.canne;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextStoppedEvent;

/**
 *
 * @author Nassim
 */
public class CStopEventHandler implements ApplicationListener<ContextStoppedEvent>{
    @Override
    public void onApplicationEvent(ContextStoppedEvent event) {
        System.out.println("ContectStoppedEvent Received");
    }
    
}
