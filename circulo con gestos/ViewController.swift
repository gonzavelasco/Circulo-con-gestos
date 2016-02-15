//
//  ViewController.swift
//  Circulo con Gestos
//
//  Created by Carlos Macias Jimenez on 20/10/15.
//  Copyright © 2015 Carlos Macias Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: CirculoView!
    
    @IBAction func pinchView(sender: UIPinchGestureRecognizer) {
        
        print("pinch gesture detected")
        
        let s = sender.scale
        
        circleView.radius *= s
        
        sender.scale = 1
    }
    
    @IBAction func panView(sender: UIPanGestureRecognizer) {
        
        let pos = sender.translationInView(sender.view)
        
        circleView.center = CGPoint(x: circleView.center.x + pos.x, y: circleView.center.y + pos.y)
        
        //circleView.x += pos.x
        //circleView.y += pos.y
        
        sender.setTranslation(CGPointZero, inView: sender.view)
    }

}

