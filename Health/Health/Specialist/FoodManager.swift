//
//  Nutrition Specialist.swift
//  Health
//
//  Created by Abdulaziz on 05/05/1443 AH.
//

import Foundation
import UIKit

class ManagerVC : UIViewController,UIImagePickerControllerDelegate,UITextFieldDelegate, UINavigationControllerDelegate{
    
    var userId: String?
    var cPic: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addFromLibrary(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let image = (info[.editedImage] ?? info[.editedImage]) as? UIImage
        
        cPic = image
        dismiss(animated: true)
    }
    @IBOutlet weak var newProductName: UITextField!
    
    @IBOutlet weak var newProductPrice: UITextField!
    @IBOutlet weak var newProductSummary: UITextField!
    
    @IBAction func AddnewProduct(_ sender: Any) {
        
        var pr = Food(name: newProductName.text!,
                         image: cPic,
                         summary: newProductSummary.text!)
//                         price: newProductPrice.text!)
        
        allFood.append(pr)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
