//
//  Maps InterFace.swift
//  Health
//
//  Created by Abdulaziz on 05/05/1443 AH.
//

import Foundation
import UIKit


class MapsInterface: UIViewController{
    
    @IBOutlet weak var titlelbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "Image-34")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        
        
        titlelbl.layer.cornerRadius = 10
        
    }

}
