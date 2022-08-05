//
//  photosViewController.swift
//  Final Project
//
//  Created by scholar on 8/3/22.
//
//, UIImagePickerControllerDelegate & UINavigationControllerDelegate

import UIKit

class photosViewController:
    UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var imageViewTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
  
    @IBAction func didTapButtonTwo() {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let imageViewTwo = info [UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            //imageView.image = image
        }
        
        
        picker.dismiss(animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

