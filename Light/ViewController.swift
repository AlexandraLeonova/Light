//
//  ViewController.swift
//  Light
//
//  Created by Александра Леонова on 04.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var lightButton: UIButton!
    
    var isLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightButton = UIButton(type: .system)
        lightButton.titleLabel?.font = .systemFont(ofSize: 29, weight: .heavy)
        lightButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(lightButton)
        
        updateUI()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        lightButton.frame = view.bounds
    }
   
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
        lightButton.setTitle(isLightOn ? "OFF" : "ON" , for: .normal)
        lightButton.tintColor = isLightOn ? .black : .white
    }
    
    @objc
    func buttonPressed(_ sender: Any) {
        isLightOn.toggle()
        updateUI()
    }
    
}

