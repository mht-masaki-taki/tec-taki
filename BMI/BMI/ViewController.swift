//
//  ViewController.swift
//  BMI
//
//  Created by ああ on 2020/04/16.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    

    @IBOutlet weak var bmitext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.height.keyboardType = UIKeyboardType.decimalPad
        self.weight.keyboardType = UIKeyboardType.decimalPad
        
        
    }

   @IBAction func button(_ sender: Any) {
    let dheight = Double(height.text!)
    let dweight = Double(weight.text!)
    let dheight2 = dheight! * dheight!
    let bmi = Int(dweight! / dheight2)
    
    if (bmi < 18) {
     bmitext.text = ("あなたのBMIは" + String(bmi) + "で低体重です")
    } else if (bmi > 25) {
     bmitext.text = ("あなたのBMIは" + String(bmi) + "で肥満です ")
    } else {
     bmitext.text = ("あなたのBMIは" + String(bmi) + "で標準です ")
    }
}
}
