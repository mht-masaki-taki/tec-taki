//
//  ViewController.swift
//  Newcamera
//
//  Created by ああ on 2020/04/24.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func cameraLaunch(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("Camera can be used.")
            let ipc = UIImagePickerController()
            ipc.sourceType = .camera
            ipc.delegate = self
            present(ipc, animated:true, completion: nil)
        } else {
            print("Camera in  not avaiable.")
        }

    }
    @IBAction func shareAction(_ sender: Any) {
       if let sheardImage = photoImage.image{
            let sheardItems = [sheardImage]
            let controller = UIActivityViewController(activityItems: sheardItems, applicationActivities: nil)
            controller.popoverPresentationController?.sourceView = view
            present(controller,animated: true, completion: nil)
        }

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        photoImage.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }

}

