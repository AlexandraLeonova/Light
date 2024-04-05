//
//  ViewController.swift
//  Light
//
//  Created by Александра Леонова on 04.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightButton: UIButton!
    
    var isLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
   
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
        lightButton.setTitle(isLightOn ? "OFF" : "ON" , for: .normal)
        lightButton.tintColor = isLightOn ? .black : .white
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        isLightOn.toggle()
        updateUI()
    }
    
}

