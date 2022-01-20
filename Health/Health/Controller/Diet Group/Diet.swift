//
//  ProductVC.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 15/03/1443 AH.
//

import UIKit

class DietVC: UIViewController{
    
    var selectedFood: Diet?
    
    @IBOutlet weak var DishtImage: UIImageView!
    @IBOutlet weak var DishName: UILabel!
    @IBOutlet weak var DishSummary: UILabel!
    

    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
    
    self.DishtImage.layer.cornerRadius = 20
    if selectedFood != nil{
        DishName.text = selectedFood?.dietName
        DishSummary.text = selectedFood?.dietDescription
        DishtImage.image =  selectedFood!.Dietimage
    }
    
}
    
}
