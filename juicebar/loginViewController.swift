//
//  loginViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var forgotpasswordBtn: UIButton!
    
    @IBAction func getbtn(sender:UIButton){
        sender.btnAnimation()
        switch sender.tag{
        case 0 : performSegue(withIdentifier: "loginsuccessSegue", sender: nil)
        case 1 : performSegue(withIdentifier: "forgetpasswordSegue", sender: nil)
        default : print("Error")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.cornerRadius = 10
        forgotpasswordBtn.layer.cornerRadius = 10
   }
}
