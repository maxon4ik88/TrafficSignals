//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Maxon on 20.08.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import UIKit

enum SignalState {
    case off
    case red
    case green
    case yellow
}

var signalState: SignalState = .off

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.setTitle("Start", for: .normal)
        switchButton.layer.cornerRadius = 30
        
        redSignalView.isHidden = true
        yellowSignalView.isHidden = true
        greenSignalView.isHidden = true
        redSignalView.layer.cornerRadius = 80
        yellowSignalView.layer.cornerRadius = 80
        greenSignalView.layer.cornerRadius = 80
        
    }

    @IBAction func switchButtonPressed() {
        switch signalState {
        case .off:
            redSignalView.isHidden = false
            signalState = .red
        case .red:
            redSignalView.alpha = 0.2
            yellowSignalView.isHidden = false
            yellowSignalView.alpha = 1
            signalState = .yellow
        case .yellow:
            yellowSignalView.alpha = 0.2
            greenSignalView.isHidden = false
            greenSignalView.alpha = 1
            signalState = .green
        case .green:
            greenSignalView.alpha = 0.2
            redSignalView.alpha = 1
            signalState = .red
        }
        
    }
    
}

