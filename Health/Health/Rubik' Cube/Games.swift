//
//  Games.swift
//  Health
//
//  Created by Abdulaziz on 30/05/1443 AH.
//

import Foundation
import UIKit

class Games: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "d444108960f1de96cc04d44e9aa53e54")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        
        
    }
}
