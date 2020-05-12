//
//  ViewController.swift
//  Swift5TimeImage
//
//  Created by ああ on 2020/05/12.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        stopButton.isEnabled = true
        
    }


    @IBAction func start(_ sender: Any) {
    
    
        startButton.isEnabled = true
    }
    
    
    @IBAction func stop(_ sender: Any) {
  
    
        
        startButton.isEnabled = false
    }
    
}

