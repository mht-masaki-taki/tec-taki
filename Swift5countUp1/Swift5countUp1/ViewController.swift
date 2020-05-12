//
//  ViewController.swift
//  Swift5countUp1
//
//  Created by ああ on 2020/05/12.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel:UILabel!
    
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
         
        countLabel.text = "0"
    }


    @IBAction func pius(_ sender: Any) {
        count = count + 1
    
        countLabel.text = String(count)
  
        if count >= 10{
            changetextColor()
            
        }
    
    }
    
    
    @IBAction func minus(_ sender: Any) {
   
        count = count - 1
        
        countLabel.text = String(count)
    
        if count <= 0{
            
            resetcoloer()
        }
    }
    
    func changetextColor(){
       
        countLabel.textColor = .yellow
   
    
    
    }
    
    func resetcoloer(){
      
        countLabel.textColor = .white
   
    
    
    }
}


