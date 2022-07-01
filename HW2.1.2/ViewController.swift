//
//  ViewController.swift
//  HW2.1.2
//
//  Created by a.turekhanov on 29.06.2022.
//

import UIKit

enum CurrentLights {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var switchButton: UIButton!
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private var currentLight = CurrentLights.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchButton.layer.cornerRadius = 10
        switchButton.setTitle("START", for: .normal)
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    @IBAction func switchButtonPressed() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            currentLight = .green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            currentLight = .red
        }
    }
    
}

