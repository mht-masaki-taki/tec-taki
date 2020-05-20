//
//  ViewController.swift
//  UnitTest
//
//  Created by ああ on 2020/05/20.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var subClass: SubClass!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.subClass = SubClass(viewController: self)
    }

    class SubClass {
        private let viewController: ViewController

        init(viewController: ViewController) {
            self.viewController = viewController
        }

        func multiply(num1: Int, num2: Int) -> Int {
            return num1 * num2
        }
    }
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
}
