//
//  ViewController.swift
//  segmented-control-swift
//
//  Created by Bob Pascazio on 4/14/15.
//  Copyright (c) 2015 ByteFly Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondview: UIView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }
    
    @IBAction func segmentedControlChanged(sender: AnyObject) {
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            println("first")
            firstView.hidden = false
            secondview.hidden = true
            var animation:CATransition = CATransition()
            animation.type = kCATransitionFade
            animation.duration = 0.3
            firstView.layer.addAnimation(animation, forKey: nil)
            secondview.layer.addAnimation(animation, forKey: nil)

            break
        case 1:
            println("second")
            firstView.hidden = true
            secondview.hidden = false
            var animation:CATransition = CATransition()
            animation.type = kCATransitionFade
            animation.duration = 0.3
            firstView.layer.addAnimation(animation, forKey: nil)
            secondview.layer.addAnimation(animation, forKey: nil)
            break
        default:
            println("unknown value")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

