//
//  ViewController.swift
//  Health
//
//  Created by Abdulaziz on 18/04/1443 AH.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var EmailTF: UITextField!
    
    @IBOutlet weak var PassTF: UITextField!
    
    @IBOutlet weak var sign: UIButton!
    
    @IBOutlet weak var login: UIButton!
    
    
    var uid:String = ""
    var containerViewBottomAnchor: NSLayoutConstraint?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "Image-10")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        
        EmailTF.text = ""
        PassTF.text = ""
        
        self.sign.layer.cornerRadius = 10
        
        self.login.layer.cornerRadius = 10
        
        PassTF.isSecureTextEntry = true
    }
    
    @IBAction func Sign(_ sender: Any) {
        
        if EmailTF.text != nil && PassTF.text != nil {
            Auth.auth().createUser(withEmail: EmailTF.text!, password: PassTF.text!) { [self] (result, error) in
                if error != nil {
                    
                    print("THERE WAS AN ERROR")
                }
                else {
                    
                    self.uid = (result?.user.uid)!
                    let ref = Database.database().reference (withPath: "users").child(self.uid)
                    ref.setValue(["email" : self.EmailTF.text!, "password": self.PassTF.text!])
                    self.performSegue(withIdentifier: "logIn", sender: self)
                }
            }
        }
    }
    
    
    
    @IBAction func LogIn(_ sender: Any) {
        if EmailTF.text != nil && PassTF.text != nil {
            Auth.auth().signIn(withEmail: EmailTF.text!, password: PassTF.text!) { (result, error) in
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
        let todoVC = navigation.topViewController as! TodoView
        todoVC.userId = uid
    }
    
    func setupKeyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    @objc func handleKeyboardWillShow(_ notification: Notification) {
        let keyboardFrame = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        let keyboardDuration = (notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as AnyObject).doubleValue
        containerViewBottomAnchor?.constant = -keyboardFrame!.height
        UIView.animate(withDuration: keyboardDuration!, animations: {
            self.view.layoutIfNeeded()
        })
    }
    @objc func handleKeyboardWillHide(_ notification: Notification) {
        let keyboardDuration = (notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as AnyObject).doubleValue
        containerViewBottomAnchor?.constant = 0
        UIView.animate(withDuration: keyboardDuration!, animations: {
            self.view.layoutIfNeeded()
        })
    }
}


