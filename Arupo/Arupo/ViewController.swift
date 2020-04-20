//
//  ViewController.swift
//  Arupo
//
//  Created by ああ on 2020/04/17.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // collection viewのoutlet
    @IBOutlet var collectionView: UICollectionView!
    
   //画像名
    let imageNames = ["btn_0", "btn_0_5", "btn_5", "btn_1", "btn_2", "btn_3", "btn_8", "btn_13", "btn_20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageCell")
        
        
        // レイアウトを調整
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9 // 表示するセルの数
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) // 表示するセルを登録(先程命名した"Cell")
        cell.backgroundColor = .clear    // セルの色
       
        if let cell = cell as? ImageCell {
            // cellに画像等を設定
            cell.setupCell(image: UIImage(named: imageNames[indexPath.row])!)
        }
        return cell
    }
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace : CGFloat = 20
        let cellSize : CGFloat = self.view.bounds.width / 3 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
 
}
