//
//  TodoView.swift
//  Health
//
//  Created by Abdulaziz on 19/04/1443 AH.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

struct ToDo{
    
    var isChecked: Bool
    var todoname: String
}



class TodoView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var logOUt: UIBarButtonItem!
    
    @IBOutlet weak var todoTV: UITableView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var todos: [ToDo] = []
    var userId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "train-1")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFit
            self.view.insertSubview(backgroundImage, at: 0)
        
        todoTV.dataSource = self
        todoTV.delegate = self
        todoTV.rowHeight = 80
        self.welcomeLabel.layer.cornerRadius = 15
        
        setWelcomeLabel()
        
        if let uid = userId {
            welcomeLabel.text = uid
        }
        
        loadTodos()
        
        // Do any additional setup after loading the view.
    }
    
    func setWelcomeLabel() {
        let userRef = Database.database().reference (withPath: "users").child(userId!)
        userRef.observeSingleEvent(of: .value) { (snapshot) in

        let value = snapshot.value as? NSDictionary
        let email = value!["email"] as? String
            self.welcomeLabel.text =  NSLocalizedString("W1", comment: "") + email! + NSLocalizedString("11", comment: "")
        }
        
    }
    
    
    
    @IBAction func logout(_ sender: Any) {
     

        
        let alert = UIAlertController(title: NSLocalizedString("l1", comment: ""),
                       message: "",
                       preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("l2", comment: ""), style: .destructive, handler: { action in
            try! Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
         let vc = ViewController()

         self.navigationController?.pushViewController(vc, animated: true)
         print("Yes")}))
        alert.addAction(UIAlertAction(title:NSLocalizedString("l3", comment: ""), style: .cancel, handler: { action in
         print("Do not")}))
        self.present(alert, animated: true)

    }
    
    @IBAction func addTodo(_ sender: Any) {
        
        
        let todoAlert = UIAlertController(title: NSLocalizedString("T1", comment: ""), message: NSLocalizedString("T2", comment: ""), preferredStyle: .alert)
        todoAlert.addTextField()
        let addTodoAction = UIAlertAction(title:NSLocalizedString("T3", comment: ""), style: .default) { (action) in

        let todoText = todoAlert.textFields![0].text
            self.todos .append(ToDo(isChecked: false, todoname: todoText!))
        let ref = Database.database().reference (withPath: "users").child(self.userId!).child("todos")
        ref.child(todoText!).setValue(["isChecked": false])
        self.todoTV.reloadData()
        }
        let cancelAction = UIAlertAction(title:NSLocalizedString("T4", comment: ""), style: .default)
        todoAlert.addAction(addTodoAction)
        todoAlert.addAction(cancelAction)
        present (todoAlert, animated: true, completion: nil)

    
    }
    
    func loadTodos() {
        
        let ref = Database.database().reference(withPath: "users").child(userId!).child("todos")
        ref.observeSingleEvent(of: .value) { (snapshot) in
            for child in snapshot.children.allObjects as! [DataSnapshot] {
                
                let todoName = child.key
                let todoRef = ref.child(todoName)
                
                todoRef.observeSingleEvent(of: .value, with: { (todoSnapshot) in
                    
                    let value = todoSnapshot.value as? NSDictionary
                    let isChecked = value!["isChecked"] as? Bool
                    self.todos.append(ToDo(isChecked: isChecked!, todoname: todoName))
                    self.todoTV.reloadData()
                })
            }
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TotoCellTableViewCell
        
        Cell.todolabel.text = todos[indexPath.row].todoname
        
        if todos[indexPath.row].isChecked{
            
            Cell.CheckMarkImage.image = UIImage(named: "checkmark")
        } else{
            Cell.CheckMarkImage.image = nil
        }
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ref =
Database.database().reference(withPath:"users").child(userId!).child("todos").child(todos[indexPath.row].todoname)
        
        if todos[indexPath.row].isChecked {
            
            todos[indexPath.row].isChecked = false
            
            ref.updateChildValues(["isChecked": false])
        }
        else {
            
            todos[indexPath.row].isChecked = true
            ref.updateChildValues(["isChecked": true])
        }
        todoTV.reloadData()
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath:
                   
                   IndexPath) {
        if editingStyle == .delete {
            let ref = Database.database().reference (withPath:
            "users").child(userId!).child("todos").child(todos[indexPath.row].todoname)
            ref.removeValue()
            todos.remove(at: indexPath.row)
            todoTV.reloadData()
            
        }
    }
    
}


