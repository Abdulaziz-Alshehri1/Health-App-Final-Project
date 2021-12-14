//
//  data.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct Food {
    let name: String
    let image: UIImage?
    let summary: String

    
}

var purshesdFood: Array <Food> = []

var allFood: Array<Food> = [
    
    Food(name: NSLocalizedString("Green tea noodles with sticky sweet chilli salmon", comment: ""),
            image: UIImage(named: "Image-11"),
         summary: NSLocalizedString("Desc-1", comment: "")),
    
    Food(name: NSLocalizedString("Lemon chicken", comment: ""),
            image: UIImage(named: "Image-12"),
            summary: NSLocalizedString("Desc-2", comment: "")),
    
    Food(name: NSLocalizedString("Tofu scramble with shredded cabbage and chilli sambal", comment: ""),
            image: UIImage(named: "Image-13"),
            summary: NSLocalizedString("Desc-3", comment: "")),
    
    Food(name: NSLocalizedString("Sesame butter radishes with lemon", comment: ""),
            image: UIImage(named: "Image-14"),
            summary: NSLocalizedString("Desc-4", comment: "")),
    
    Food(name: NSLocalizedString("Serve up a golden roasted chicken with this simple one-tray bake recipe", comment: ""),
            image: UIImage(named: "Image-15"),
            summary: NSLocalizedString("Desc-5", comment: "")),
    
    Food(name: NSLocalizedString("Rice salad with eggplant", comment: ""),
            image: UIImage(named: "Image-16"),
            summary: NSLocalizedString("Desc-6", comment: "")),
    
    Food(name: NSLocalizedString("Summer chopped salad with citrus sesame dressing", comment: ""),
            image: UIImage(named: "Image-5"),
            summary: NSLocalizedString("Desc-7", comment: "")),
    
    Food(name: NSLocalizedString("Minty lamb with beetroot and charred broccoli", comment: ""),
            image: UIImage(named: "Image-7"),
            summary: NSLocalizedString("Desc-8", comment: ""))
    
]
