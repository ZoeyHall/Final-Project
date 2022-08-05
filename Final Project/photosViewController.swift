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
    var imagePicker = UIImagePickerController()
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }
  
    @IBAction func chooseFromLibraryTapped(_ sender: UIButton) {
        
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
       // let vc = UIImagePickerController()
       // vc.sourceType = .photoLibrary
       // vc.delegate = self
       // vc.allowsEditing = true
       // present(vc, animated: true)
    }
    


//extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  //  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
   //     if let imageViewTwo = info [UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
   //         imageView.image = image
   //     }
        
        
   //     picker.dismiss(animated: true, completion: nil)
        
 //   }
   // func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
  //      picker.dismiss(animated: true, completion: nil)
 //   }
    @IBOutlet weak var displayImage: UIImageView!
    
func imagePickerController (_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
    if let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as? UIImage {
        displayImage.image = selectedImage
    }
    imagePicker.dismiss(animated: true, completion: nil)
}
}

