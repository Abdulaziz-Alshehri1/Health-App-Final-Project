//
//  ViewController.swift
//  BMI-1
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class BMI: UIViewController {
    
    @IBOutlet weak var weightt: UITextField!
    
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var lebl: UILabel!
    
    @IBOutlet weak var animationBtn: UIButton!
    
    @IBOutlet weak var StatementlLbl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lebl.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func yourBMI(_ sender: Any) {
        let a = Float(heightt.text!)
        let b = Float(weightt.text!)
        let b1 = bmii(hi: a!, wi: b!)
        lebl.text = String(b1.bmi())
        
        let finalAns = lebl
        
//        if (finalAns <= 18){
//            StatementlLbl.text = "You are underweight!"
//        } else if (finalAns >= 18 && finalAns <= 24){
//            StatementlLbl.text = "You have a normal weight!"
//        } else if (finalAns >= 25 && finalAns <= 29){
//            StatementlLbl.text = "You are overweight!"
//        }
//        else {
//            StatementlLbl.text = "You are obese!"
//        }
    }
    
}
    


