//
//  ViewController.swift
//  HW2.1.2
//
//  Created by a.turekhanov on 29.06.2022.
//

import UIKit

enum trafficLights {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

