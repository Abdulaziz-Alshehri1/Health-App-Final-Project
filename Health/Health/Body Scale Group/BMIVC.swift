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
        
        statementLbl.layer.cornerRadius = 15
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        let weight = (weightTxtField.text! as NSString).floatValue
        let height = (heightTxtField.text! as NSString).floatValue
        let height2 = height/100
        
        let bodyStatus = weight/(height2*height2)
                
        BMITotalLbl.text = String(format: "%.2f", bodyStatus)
        
        if (bodyStatus <= 18){
            statementLbl.text = NSLocalizedString("status1", comment: "")
        } else if (bodyStatus >= 18 && bodyStatus <= 24){
            statementLbl.text = NSLocalizedString("status2", comment: "")
        } else if (bodyStatus >= 25 && bodyStatus <= 29){
            statementLbl.text = NSLocalizedString("status3", comment: "")
        }
        else {
            statementLbl.text = NSLocalizedString("status4", comment: "")
        }
    }
}

