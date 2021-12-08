//
//  ProductCell.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

class FoodCell: UICollectionViewCell{
    
    var CellProduct: Food!
    
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductName: UILabel!
    
    func setup (product: Food ) {
        ProductImage.layer.cornerRadius = 25
        ProductImage.image = product.image
        ProductName.text = product.name
        CellProduct = product
    }
    
}
