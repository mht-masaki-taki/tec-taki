//
//  ImageCell.swift
//  Arupo
//
//  Created by ああ on 2020/04/20.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var ImageCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(image: UIImage) {
        self.ImageCell.image = image
        self.ImageCell.backgroundColor = .clear
        self.backgroundColor = .clear
    }
}
