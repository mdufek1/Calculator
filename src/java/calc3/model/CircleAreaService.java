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
public class CircleAreaService {
    
    public String getArea(double radius){
        return "Circle Area: "+(Math.PI*radius);
    }
}
