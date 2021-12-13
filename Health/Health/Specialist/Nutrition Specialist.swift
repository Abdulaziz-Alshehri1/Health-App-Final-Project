//
//  Nutrition Specialist.swift
//  Health
//
//  Created by Abdulaziz on 05/05/1443 AH.
//

import Foundation
import UIKit

class DietManagerVC : UIViewController,UIImagePickerControllerDelegate,UITextFieldDelegate, UINavigationControllerDelegate{
    
    
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
