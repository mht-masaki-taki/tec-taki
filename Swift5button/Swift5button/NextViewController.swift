//
//  NextViewController.swift
//  Swift5button
//
//  Created by ああ on 2020/05/11.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var changeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func change(_ sender: Any) {
    
        changeLabel.text = "暗号が解除されました"
    
    
    }
    
}
