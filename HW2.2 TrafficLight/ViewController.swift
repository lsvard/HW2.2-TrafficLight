//
//  ViewController.swift
//  HW2.2 TrafficLight
//
//  Created by l.s.vard on 08.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
    //    @IBAction func startButtonDidTapped(_ light: Double) {
    //        let alpha = 0.0
    //        switch alpha {
    //        case redView.alpha:
    //            redView.alpha = 1.0
    //            yellowView.alpha = 0.3
    //            greenView.alpha = 0.3
    //            fallthrough
    //        case yellowView.alpha:
    //            redView.alpha = 0.3
    //            greenView.alpha = 0.3
    //            yellowView.alpha = 1
    //            fallthrough
    //        case greenView.alpha:
    //            redView.alpha = 0.3
    //            yellowView.alpha = 0.3
    //            greenView.alpha = 1
    //        default:
    //            break
    //        }
    //    }
    
    //    @IBAction func startButtonDidTapped(_ light: Double) {
    //        switch light {
    //        case redView.alpha:
    //            redView.alpha = 1.0
    //            yellowView.alpha = 0.3
    //            greenView.alpha = 0.3
    //            startButton.setTitle("NEXT", for: .normal)
    //            fallthrough
    //        case yellowView.alpha:
    //            redView.alpha = 0.3
    //            greenView.alpha = 0.3
    //            yellowView.alpha = 1
    //            fallthrough
    //        case greenView.alpha:
    //            redView.alpha = 0.3
    //            yellowView.alpha = 0.3
    //            greenView.alpha = 1
    //        default:
    //            break
    //        }
    //    }
}
