//
//  File.swift
//  Health
//
//  Created by Abdulaziz on 08/05/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseDatabase


class Specialist: UIViewController{
    
    @IBOutlet weak var Emaill: UITextField!
    
    @IBOutlet weak var Passs: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signBtn: UIButton!
    var uid:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.layer.cornerRadius = 15
        
        Passs.isSecureTextEntry = true
    }
    
    @IBAction func signbutton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiwwKTYjMD1AhWKAGMBHX0rAEYQFnoECA0QAQ&url=https%3A%2F%2Fwww.google.com%2Fgmail%2F&usg=AOvVaw3mZ_qbD_gQyp_sqkjrwStn")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func loggin(_ sender: Any) {
        if Emaill.text != nil && Passs.text != nil {
            Auth.auth().signIn(withEmail: Emaill.text!, password: Passs.text!) { (result, error) in
                if error != nil {
                    
                    print("THERE WAS AN ERROR")
                }
                else {
                    
                    self.uid = (result?.user.uid)!
                    self.performSegue(withIdentifier: "logIn", sender: self)
                }
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigation = segue.destination as! UINavigationController
        let todoVC = navigation.topViewController as! ManagerVC
        todoVC.userId = uid
    }
}
