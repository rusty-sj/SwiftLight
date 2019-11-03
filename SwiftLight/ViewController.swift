//
//  ViewController.swift
//  SwiftLight
//
//  Created by Rashmi Jadhav on 11/2/19.
//  Copyright © 2019 Rashmi Jadhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    func updateUI(){
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitleColor(.black, for: .normal)
            lightButton.setTitle("Turn Off the Torch!", for: .normal)
            
        } else {
            view.backgroundColor = .black
            lightButton.setTitleColor(.white, for: .normal)
            lightButton.setTitle("Turn On the Torch!", for: .normal)
        }
    }
}
