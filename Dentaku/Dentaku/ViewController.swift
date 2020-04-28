//
//  ViewController.swift
//  Dentaku
//
//  Created by ああ on 2020/04/28.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return numbers.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers[section].count
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: collectionView.frame.width, height: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 3 * 10) / 4
        return .init(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = caluculatorCollectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)

        cell.backgroundColor = .blue
        return cell
    }
    
    let numbers = [
        ["1","2","3","4"],
        ["1","2","3","4"],
        ["1","2","3","4"],
        ["1","2","3","4"],
        ["1","2","3","4"],
    ]
    

    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var caluculatorCollectionView: UICollectionView!
    @IBOutlet weak var caluculatorHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        caluculatorCollectionView.delegate = self
        caluculatorCollectionView.dataSource = self
        caluculatorCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        caluculatorHeightConstraint.constant = view.frame.width * 1.4
        // Do any additional setup after loading the view.
    }


}





   
  
