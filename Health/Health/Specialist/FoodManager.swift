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

class ManagerVC : UIViewController,UIImagePickerControllerDelegate,UITextFieldDelegate, UINavigationControllerDelegate{
    
    var userId: String?
    var cPic: UIImage!
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var addToFoodMenu: UIButton!
    @IBOutlet weak var logOUT: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addToFoodMenu.layer.cornerRadius = 15
       
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
            self.foodImage.image = editedImage
        }
        

        
        cPic = image
        dismiss(animated: true)
        

    }
    
    
    
    @IBAction func logoutAction(_ sender: Any)  {
        
        
        let alert = UIAlertController(title:NSLocalizedString("l4", comment: ""),
                       message: "",
                       preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:NSLocalizedString("l5", comment: ""), style: .destructive, handler: { action in
            try! Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
         let vc = Specialist()
  
         self.navigationController?.pushViewController(vc, animated: true)
         print("“Yes start Chat”")}))
        alert.addAction(UIAlertAction(title: NSLocalizedString("l6", comment: ""), style: .cancel, handler: { action in
         print("“Do not start Chat”")}))
        self.present(alert, animated: true)
        
        
        
    }
    

    
    @IBOutlet weak var newProductName: UITextField!
    

    @IBOutlet weak var newProductSummary: UITextField!
    
    @IBAction func AddnewProduct(_ sender: Any) {
        
        var pr = Food(name: newProductName.text!,
                         image: cPic,
          
                      summary: newProductSummary.text!)

        
        allFood.append(pr)
        
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}


