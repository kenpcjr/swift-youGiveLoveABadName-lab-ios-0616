//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jonTheBonView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    
    var isBig = false
    
    var jonHeightAnchor = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.removeConstraints(self.view.constraints)
        //self.jonTheBonView.removeConstraints(self.jonTheBonView.constraints)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        jonTheBonView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        jonTheBonView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        jonTheBonView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor).active = true
        self.jonHeightAnchor = jonTheBonView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.30)
        self.jonHeightAnchor.active = true
        
        toggleButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        toggleButton.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor, constant: -50).active = true
        
        
        
        
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        if !isBig {
            
            animateUp()
            isBig = true
            
        }else{
            
            animateDown()
            isBig = false
        }
        
        
        
        
    }
    
    func animateUp() {
        
        UIView.animateKeyframesWithDuration(1, delay: 0.0, options: [], animations: {
            
            print("tapped")
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.25, animations: {
                self.jonHeightAnchor.constant = -100
                
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.50, animations: {
                self.jonHeightAnchor.constant = 550
                
                self.view.layoutIfNeeded()
            })
            
            
            UIView.addKeyframeWithRelativeStartTime(0.75, relativeDuration: 0.25, animations: {
                self.jonHeightAnchor.constant = 520
                
                self.view.layoutIfNeeded()
            })
            
            
            
        }) { (true) in
            
            self.jonHeightAnchor.constant = 520
            
            self.view.layoutIfNeeded()
        }
        
    }
    
    
    func animateDown() {
        
        UIView.animateKeyframesWithDuration(1, delay: 0.0, options: [], animations: {
            
            print("tapped")
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.25, animations: {
                self.jonHeightAnchor.constant = 550
                
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.50, animations: {
                self.jonHeightAnchor.constant = -100
                
                self.view.layoutIfNeeded()
            })
            
            
            UIView.addKeyframeWithRelativeStartTime(0.75, relativeDuration: 0.25, animations: {
                self.jonHeightAnchor.constant = 0
                
                self.view.layoutIfNeeded()
            })
            
            
            
        }) { (true) in
            
            self.jonHeightAnchor.constant = 0
            
            self.view.layoutIfNeeded()
            
            
        }
    }
    
}


