//
//  WeightViewController.swift
//  MyHealthApp
//
//  Created by Li Yas on 2020-07-24.
//  Copyright © 2020 Kavitha Vijayan. All rights reserved.
//


import UIKit

class WeightViewController: UIViewController {
    
    //enum for errorhandling
    enum MyErrorEnum : Error {
        case EmptyTextField
        case InvalidNumberError
        case NothingError
    }
    
    // outlet for result label
    @IBOutlet weak var resultLabel: UILabel!
    //outlet for height TextField
    
    @IBOutlet weak var heightTextField: UITextField!
  
    
    //Outlet for age TextField
    
    @IBOutlet weak var ageTextField: UITextField!
    // Activity for Calculate Button Function
    
    
    // outlet for  calaculate Button
    @IBOutlet weak var calaculateWeigthtButton: UIButton!{
        didSet{
            //to make button corner round
            self.calaculateWeigthtButton.layer.cornerRadius = 20.0
           
        }
    }
    
    var activeTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "ss")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        
        self.heightTextField.layer.cornerRadius = 5
        self.ageTextField.layer.cornerRadius = 5
        
//        self.setupLocalization()
////        self.setupView()
//        self.setupMenuItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Ideal Weight Calculator"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculateWeightAction(_ sender: Any) {
        // invoking calculateWeight function
        
        //invoking the function
        do {
            let result = try calculateWeight()
            print(result)
        } catch MyErrorEnum.NothingError {
//            resultLabelWomen.text = ""
            resultLabel.text = ("Invalid input")
        }catch MyErrorEnum.EmptyTextField{
            resultLabel.text = ("inputfieldscan'tBeEmpty")

//            resultLabelWomen.text = ""
        }
        catch MyErrorEnum.InvalidNumberError {
            resultLabel.text = ("Invalid input")
//            resultLabelWomen.text = ""
        } catch {
            resultLabel.text = ("all exceptions")
//            resultLabelWomen.text = ""
        }
    }
    
    
    // Function to calculate the ideal weight
    
    func calculateWeight() throws->NSData? {
        //        let height: Double = Double(heightTextField.text ?? "")
        //        let age: Double = Double(ageTextField.text ?? "")
        
        if( heightTextField.text == "" || ageTextField.text == "")
        {
            throw MyErrorEnum.EmptyTextField
        }
        else if  Int(heightTextField.text ?? "") ?? 0 > 200{
            throw MyErrorEnum.InvalidNumberError
        }else if  Int(ageTextField.text ?? "") ?? 0 > 100 {
            throw MyErrorEnum.InvalidNumberError
        }
        else {
            //initializing text fields inputs
            if let height: Double = Double(heightTextField.text ?? ""),
                let age: Double = Double(ageTextField.text ?? "") {
                
                if(height < 0 || age < 0 ){
                    throw MyErrorEnum.NothingError
                } else {
                    var result : Double = 0
                    var resultMen : Double = 0
//                    var resultWomen : Double = 0
                    
                    //finding the ideal weight using formulas for both men and women
                    resultMen = 45.5+(0.91*(height-152.4))
//                    resultWomen = 45.5+(0.91*(height-152.4))
                    
                    // setting the label values
                    resultLabel.text = "\(String(format:"%.2f", resultMen)) "
//                    resultLabelWomen.text = "Women:".localizableString() + " \(String(format:"%.2f", resultWomen))"
                    return NSData(bytes:&result, length: MemoryLayout<Double>.size)
                }
            } else {
                 throw MyErrorEnum.InvalidNumberError
            }
        }
        return NSData()
    }
    // Action to hide keyboard when taps on the screen
//    @IBAction func dismissKeyBoardOnTap(_ sender: Any) {
//        heightTextField.resignFirstResponder()
//        ageTextField.resignFirstResponder()
//    }
}

//extension WeightViewController {
//    
//    func setupLocalization(){
//
//    }
    
//    func setupView(){
//        self.heightTextField.delegate = self
//        self.ageTextField.delegate = self
//        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
//        view.addGestureRecognizer(tap)
//    }
    
    //Dismiss keyboard
//    @objc func dismissKeyboard() {
//        self.view.endEditing(true)
//    }
    
//    func setupMenuItem(){
//        let defaultValue = UIMenuItem(title: "Default Value", action: #selector(defaultMethod))
//        UIMenuController.shared.menuItems = [defaultValue]
//    }
//
//    @objc func defaultMethod(){
//        if self.activeTextField == self.ageTextField {
//            self.ageTextField.text = "30"
//        }else{
//            self.heightTextField.text = "175.4"
//        }
//    }
//}


//extension WeightViewController: UITextFieldDelegate {
//
//    // Assign the newly active text field to your activeTextField variable
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        self.activeTextField = textField
//    }
//}
