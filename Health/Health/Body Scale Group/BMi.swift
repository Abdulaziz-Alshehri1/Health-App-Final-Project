//
//  bmii.swift
//  BMI-1
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class bmii {
    var hi: Float
    var wi: Float
    
    init(hi:Float,wi:Float){
        self.hi = hi
        self.wi = hi
    }
    
    func bmi()->Float {
        return wi/(hi*hi) * 1000
        
    }
    
}
