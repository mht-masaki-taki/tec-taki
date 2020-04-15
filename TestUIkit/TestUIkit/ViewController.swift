//
//  ViewController.swift
//  TestUIkit
//
//  Created by ああ on 2020/04/15.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapButton(_ sender: Any) {
        textLabel.text = "Hello World"
    }
    
}

