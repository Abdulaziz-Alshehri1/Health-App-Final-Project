//
//  TotoCellTableViewCell.swift
//  Health
//
//  Created by Abdulaziz on 19/04/1443 AH.
//

import UIKit

    
class TotoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var todolabel: UILabel!
    @IBOutlet weak var CheckMarkImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
        self.todolabel.layer.cornerRadius = 10
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

