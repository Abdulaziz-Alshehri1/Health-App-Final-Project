//
//  BMIVC.swift
//  Health
//
//  Created by Abdulaziz on 22/05/1443 AH.
//

import UIKit

class BMIViewController: UIViewController {


    @IBOutlet weak var weightTxtField: UITextField!
    @IBOutlet weak var heightTxtField: UITextField!
    
    @IBOutlet weak var BmiTotalLbl: UILabel!
    
    @IBOutlet weak var statementLbl: UILabel!
    @IBOutlet weak var BMITotalLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "ss")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        let weight = (weightTxtField.text! as NSString).floatValue
        let height = (heightTxtField.text! as NSString).floatValue
        let height2 = height/100
        
        let finalAns = weight/(height2*height2)
                
        BMITotalLbl.text = String(format: "%.2f", finalAns)
        
        if (finalAns <= 18){
            statementLbl.text = "You are underweight!"
        } else if (finalAns >= 18 && finalAns <= 24){
            statementLbl.text = "You have a normal weight!"
        } else if (finalAns >= 25 && finalAns <= 29){
            statementLbl.text = "You are overweight!"
        }
        else {
            statementLbl.text = "You are obese!"
        }
    }
}

