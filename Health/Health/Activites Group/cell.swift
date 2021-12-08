//
//  cell.swift
//  videoo
//
//  Created by Abdulaziz on 22/04/1443 AH.
//

import Foundation
import UIKit

class VideoCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbNailImage: UIImageView!
    
    var video: Video! {
        didSet{
            updateUI()
        }
    }
    func updateUI(){
        thumbNailImage.image = UIImage(named: video.thumbnailFileName)
        
        thumbNailImage.layer.cornerRadius = 25
        
    }
    
}


