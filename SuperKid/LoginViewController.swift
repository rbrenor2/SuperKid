//
//  LoginViewController.swift
//  SuperKid
//
//  Created by Breno Ramos on 02/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nickTextField: UITextField!
    @IBOutlet weak var appNameLabel: UIImageView!
    @IBOutlet weak var shieldLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        self.initialSetup()
    }

    @IBAction func notRegisteredButton(_ sender: Any) {
        self.performSegue(withIdentifier: "notRegisteredSegue", sender: self)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        self.performSegue(withIdentifier: "loginToTaskListSegue", sender: self)
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


