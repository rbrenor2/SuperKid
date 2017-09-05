//
//  TaskListViewController.swift
//  SuperKid
//
//  Created by Breno Ramos on 05/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var taskListTableView: UITableView!
    
    let tasksArray:Array<Task> = []

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
        
    }
    
    //TableView Delegates
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ListTableViewCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
