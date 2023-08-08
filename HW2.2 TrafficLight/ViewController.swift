//
//  ViewController.swift
//  HW2.2 TrafficLight
//
//  Created by l.s.vard on 08.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        orangeView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
    }
    
    //    @IBAction func startButtonDidTapped() {
    //        startButton.setTitle("NEXT", for: .normal)
    //        if redView.alpha != 1 {
    //            redView.alpha = 1
    //            orangeView.alpha = 0.3
    //            greenView.alpha = 0.3
    //        } else if orangeView.alpha != 1 {
    //            orangeView.alpha = 1
    //            redView.alpha = 0.3
    //            greenView.alpha = 0.3
    //        } else if greenView.alpha != 1 {
    //            greenView.alpha = 1
    //            redView.alpha = 0.3
    //            orangeView.alpha = 0.3
    //        }
    //    }
    @IBAction func startButtonDidTapped(_ viewAlpha: Double) {
        switch viewAlpha {
        case redView.alpha:
            redView.alpha = 1
            fallthrough
        case orangeView.alpha:
            redView.alpha = 0.3
            orangeView.alpha = 1
            fallthrough
        case greenView.alpha:
            redView.alpha = 0.3
            orangeView.alpha = 0.3
            greenView.alpha = 1
        default:
            break
        }
    }
}
