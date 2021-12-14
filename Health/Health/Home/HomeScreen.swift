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
        
        fixButton(btn: activite, color: .init(named: "AzYellow"))
        fixButton(btn: food, color: .init(named: "AzGreen"))
        fixButton(btn: BMi, color: .init(named: "AzRed"))
    }
    
    func fixButton(btn: UIButton, color: UIColor?) {
        btn.layer.cornerRadius = 30
        btn.imageView?.layer.cornerRadius = 30
        btn.imageView?.layer.masksToBounds = true
        btn.imageView?.clipsToBounds = true
        btn.imageView?.contentMode = .scaleAspectFill
        btn.backgroundColor = color
    }
}

