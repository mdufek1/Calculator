/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calc3.model;

import common.model.*;

/**
 *
 * @author mdufek1
 */
public class RectangleAreaService implements PolygonAreaStrategy {
    private String outputText= "Rectangle Area: ";
    
    
    @Override
    public String getArea(double width, double height){
        return outputText+(width*height);
    }

    public String getOutputText() {
        return outputText;
    }

    public void setOutputText(String outputText) {
        this.outputText = outputText;
    }


    
    
}
