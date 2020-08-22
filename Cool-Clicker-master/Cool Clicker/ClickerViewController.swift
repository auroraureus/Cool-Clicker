//
//  ViewController.swift
//  Cool Clicker
//
//  Created by Nicole Li on 22/8/20.
//  Copyright © 2020 sleepy. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var timer: Timer?
    var timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBAction func tapGestureRecogniser(_ sender: Any) {
    }
    @IBAction func buttonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
    if counter == 30 {
    print("done")
    }
    
    @objc func updateCounter() {
            timeElapsed += 0.1
    }

    

}

