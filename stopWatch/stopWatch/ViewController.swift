//
//  ViewController.swift
//  stopWatch
//
//  Created by Murat Han on 7.02.2020.
//  Copyright © 2020 mracipayam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //timer
    var timer = Timer()

    @IBAction func startButtonClicked(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
    }
    @objc func action() {
        time += 1
        label.text = String(time)
    }
    @IBAction func pauseButtonClicked(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetButtonClicked(_ sender: Any) {
        timer.invalidate()
        time = 0
        label.text = String(time)
    }
    

}

