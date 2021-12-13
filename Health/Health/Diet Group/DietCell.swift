//
//  ProductCell.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

class DietCell: UICollectionViewCell{
    
    var CellProduct: Diet!
    
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var linkDiet: UIButton!
    
    @IBAction func linkAction(_ sender: Any) {
        guard let url = URL(string: CellProduct.link) else { return }
        UIApplication.shared.open(url)
    }
    func setup (product: Diet ) {
        ProductName.layer.cornerRadius = 15
        linkDiet.layer.cornerRadius = 15
        ProductImage.layer.cornerRadius = 25
        ProductImage.image = product.Dietimage
        ProductName.text = product.dietName
    
        CellProduct = product
    }
    
}
