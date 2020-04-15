//
//  CustomView.swift
//  CustomViewtest
//
//  Created by ああ on 2020/04/15.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var imageView: UIImageView!
   

    @IBOutlet weak var Label: UILabel?
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           loadNib()
       }

       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)!
           loadNib()
       }

       func loadNib() {
           if let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView {
               view.frame = self.bounds
               self.addSubview(view)
           }
       }
}
