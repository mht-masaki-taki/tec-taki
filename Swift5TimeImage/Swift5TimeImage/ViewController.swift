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
    
    var timer = Timer()
    
    var count = Int()
    
    var imageArray = [UIImage]()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//ストップボタンを押せなくする
        stopButton.isEnabled = false
        
        for i in 0..<5 {
           
            print(i)
            
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        
        imageView.image = UIImage(named: "0")
        
    }

    func startTimer() {
    
//        タイマーを回す、0.2秒ごとにあるメソッドを呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    
    
    @objc func timerUpdate() {
        
        //0.2秒毎に呼ばれる
        count = count + 1
        
        
        if count > 4 {
            
            count = 0
        }
        
        
        imageView.image = imageArray[count]
        
    }
    
    
    @IBAction func start(_ sender: Any) {
     
        startTimer()
//    スタートボタンを押せなくする
        startButton.isEnabled = false
        stopButton.isEnabled = true
    }
    
    
    @IBAction func stop(_ sender: Any) {
  
    
//        スタートボタンを押せるようにする
        startButton.isEnabled = true
        stopButton.isEnabled = false
        //タイマーを止める
        timer.invalidate()

        
    }
    
}

