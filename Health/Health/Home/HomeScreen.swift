//
//  File.swift
//  Health
//
//  Created by Abdulaziz on 20/04/1443 AH.
//

import Foundation
import UIKit


class HomeVC: UIViewController{
    
    
    @IBOutlet weak var activite: UIButton!
    
    @IBOutlet weak var food: UIButton!
    
    @IBOutlet weak var BMi: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.activite.layer.cornerRadius = 30
        self.food.layer.cornerRadius = 30
        self.BMi.layer.cornerRadius = 30
        
     
        
    }
}

