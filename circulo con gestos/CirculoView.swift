//
//  CirculoView.swift
//  Circulo con Gestos
//
//  Created by Carlos Macias Jimenez on 20/10/15.
//  Copyright © 2015 Carlos Macias Jimenez. All rights reserved.
//

import UIKit

class CirculoView: UIView {

    var radius: CGFloat = 60.0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var color: UIColor = UIColor.blackColor()
    
    override func drawRect(rect: CGRect) {
        drawCircle()
    }
    
    //var x =
    //var y =
    
    private func drawCircle() {
        
        let width = bounds.size.width;
        let height = bounds.size.height;
        
        let x = width/2
        let y = height/2
        
        let path = UIBezierPath();
        path.lineWidth = 5.0
        color.setStroke()
        
        let center = CGPointMake(x, y)
        
        let radiusExt = radius
        
        path.addArcWithCenter(center, radius: CGFloat(radiusExt), startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: false);
        path.stroke()
        
        color.setFill()
        path.fill()
    }


}
