//
//  ProductVC.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 15/03/1443 AH.
//

import UIKit

class FoodVC: UIViewController{
    
    var selectedFood: Food?
    
    @IBOutlet weak var DishtImage: UIImageView!
    @IBOutlet weak var DishName: UILabel!
    @IBOutlet weak var DishSummary: UILabel!
    
    override func viewDidLoad() {
        
       
        super.viewDidLoad()
    
    self.DishtImage.layer.cornerRadius = 20
    if selectedFood != nil{
        DishName.text = selectedFood?.name
        DishSummary.text = selectedFood?.summary
        DishtImage.image =  selectedFood!.image
    }
        
}
    
}
