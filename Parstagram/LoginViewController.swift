//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Vasant Saladi on 10/14/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func login(_ sender: Any) {
        let username = username.text!
               let password = password.text!
               
               PFUser.logInWithUsername(inBackground: username, password: password) {
                   (user, error) in
                   if user != nil {
                       self.performSegue(withIdentifier: "loginSegue", sender: nil)
                   } else {
                       print("Error: \(error?.localizedDescription)")
                   }
               }
        
    }
    
    @IBAction func signup(_ sender: Any) {
        
        let user = PFUser()
        user.username = username.text
        user.password = password.text
        
        user.signUpInBackground { (success, error) in
                   if success {
                       self.performSegue(withIdentifier: "loginSegue", sender: nil)
                   } else {
                       print("Error: \(error?.localizedDescription)")
                   }
               }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
