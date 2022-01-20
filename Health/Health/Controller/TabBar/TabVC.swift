//
//  File.swift
//  Health
//
//  Created by Abdulaziz on 07/05/1443 AH.
//

import Foundation
import UIKit

class TabBar: UITabBarController{
    
    @IBOutlet weak var tab: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tab.layer.cornerRadius = 35
        
    }
    
   
    
}
