//
//  data.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct Diet {
    let dietName: String
    let Dietimage: UIImage?
    let dietDescription: String
    let link: String
    
    
}

var purshesdDiet: Array <Diet> = []

var allDiet: Array<Diet> = [
    
    Diet(
        dietName: NSLocalizedString("Keto", comment: ""),
        Dietimage: UIImage(named: "Image-43"),
        dietDescription: NSLocalizedString("desc-1", comment: ""),
        link: "https://www.healthline.com/nutrition/ketogenic-diet-101#ketosis"
    ),
    
    Diet(dietName:NSLocalizedString("DASH", comment: ""),
         Dietimage: UIImage(named: "Image-44"),
         dietDescription: NSLocalizedString("desc-2", comment: ""),
         link:"https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/in-depth/dash-diet/art-20048456"),
    
    Diet(dietName:NSLocalizedString("MIND", comment: "") ,
         Dietimage: UIImage(named: "Image-45"),
         dietDescription: NSLocalizedString("desc-3", comment: ""),
         link: "https://www.healthline.com/nutrition/mind-diet"),
    
    Diet(dietName:NSLocalizedString("TLC Diet", comment: ""),
         Dietimage: UIImage(named: "Image-46"),
         dietDescription: NSLocalizedString("desc-4", comment: ""),
         link: "https://health.usnews.com/best-diet/tlc-diet"),
    
    Diet(dietName:NSLocalizedString("intermittent fasting", comment: ""),
         Dietimage: UIImage(named: "Image-47"),
         dietDescription: NSLocalizedString("desc-5", comment: ""),
         link: "https://www.hopkinsmedicine.org/health/wellness-and-prevention/intermittent-fasting-what-is-it-and-how-does-it-work")
    
]
