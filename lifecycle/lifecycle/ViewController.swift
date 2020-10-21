//
//  ViewController.swift
//  lifecycle
//
//  Created by ああ on 2020/04/14.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated)
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    deinit {
        print("deinit")
    }
    
    @IBAction func tapButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Next", bundle: nil)
        let viewController: NextViewController = (storyboard.instantiateViewController(withIdentifier: "Next") as? NextViewController)!
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

