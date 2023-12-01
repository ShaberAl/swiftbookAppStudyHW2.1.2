//
//  ViewController.swift
//  swiftbookAppStudyHW2.1.2
//
//  Created by MacOS on 01.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha != 1.0 && yellowView.alpha != 1.0 {
            makeAllViewsSemiVisible()
            redView.alpha = 1.0
        } else if yellowView.alpha != 1.0 {
            makeAllViewsSemiVisible()
            yellowView.alpha = 1.0
        } else if greenView.alpha != 1.0 {
            makeAllViewsSemiVisible()
            greenView.alpha = 1.0
        }
    }
    
    private func configureViews() {
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }
    
    private func makeAllViewsSemiVisible() {
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
}

