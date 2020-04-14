//
//  ViewController.swift
//  lifecycle
//
//  Created by ああ on 2020/04/14.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    @IBAction func tapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
}

