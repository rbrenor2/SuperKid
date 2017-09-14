//
//  TaskListViewController.swift
//  SuperKid
//
//  Created by Breno Ramos on 05/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit
import Firebase

class TaskListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var taskListTableView: UITableView!
    
    //Connecting with Firebase
    let ref = Database.database().reference(withPath:"Tasks")
    
    var tasksArray:Array<Task> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dismiss keyboard when touch outside textfield
        self.hideKeyboard()
        
        //Scroll up view when editing with keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)

        // Do any additional setup after loading the view.
        //Set datadource
        taskListTableView.dataSource = self

        //TEST TASK UPLOAD
        let task1 = Task(addedByUser: "testeUser", status: false, points: 100, description: "Arrumar a cama")
        self.ref.child(task1.taskDescription).setValue(task1.toAnyObject())
        
        //
        ref.observe(.value, with: { snapshot in
            
            var newTasks: [Task] = []
            
            for item in snapshot.children {
                let task = Task(snapshot: item as! DataSnapshot)
                newTasks.append(task)
                print(newTasks)
            }
            
            self.tasksArray = newTasks
            self.taskListTableView.reloadData()
        })
        
    }
    
    //TableView Delegates
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        
        let cell = taskListTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TaskListCustomTableViewCell
        
        let currentTask:Task = tasksArray[indexPath.row]

        cell.taskPointsLabel.text = String(currentTask.taskPoints)
        
        cell.taskDescriptionLabel.text = currentTask.taskDescription
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksArray.count
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
