//
//  ViewController.swift
//  Cool Clicker
//
//  Created by Nicole Li on 22/8/20.
//  Copyright © 2020 sleepy. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    var time: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc
    func update(){
       time += 1
    }
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = "\(counter)"
        
        if counter == 30 {
            label.text = "done in \(time)s :D"
        }
        
    }

}

