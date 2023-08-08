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
        redView.alpha = 0.3
        orangeView.alpha = 0.3
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        redView.alpha = 1
        if redView.alpha == 1 {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}
