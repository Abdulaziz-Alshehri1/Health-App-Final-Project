//
//  Nutrition Specialist.swift
//  Health
//
//  Created by Abdulaziz on 05/05/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class DietManagerVC : UIViewController,UIImagePickerControllerDelegate,UITextFieldDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var dietImage: UIImageView!
    @IBOutlet weak var addToDietMenu: UIButton!
    @IBOutlet weak var photoPrevieww: UIImageView!
    

    var cPic: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addToDietMenu.layer.cornerRadius = 15
        photoPrevieww.layer.cornerRadius = 15
     

    }
    
    
    @IBAction func addFromLibrary(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.editedImage]) as? UIImage
        
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            self.dietImage.image = editedImage
        }
        
        cPic = image
        dismiss(animated: true)
    }
    
    
    @IBOutlet weak var newProductName: UITextField!
    
//    @IBOutlet weak var newProductPrice: UITextField!
    @IBOutlet weak var newProductSummary: UITextField!
    
    @IBOutlet weak var linkk: UITextField!
    
    @IBAction func AddnewProduct(_ sender: Any) {
        
        var pr = Diet(
            dietName: newProductName.text!,
            Dietimage: cPic,
            dietDescription: newProductSummary.text!,
            link: linkk.text!
        )
        //                         price: newProductPrice.text!)
        
        allDiet.append(pr)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
