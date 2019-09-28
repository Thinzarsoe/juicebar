//
//  firstViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var guestuserBtn: UIButton!
    
    @IBAction func actionBtn(sender: UIButton)
    {
        sender.btnAnimation()
        switch sender.tag{
        case 0: performSegue(withIdentifier: "registerSegue", sender: nil)
        case 1: performSegue(withIdentifier: "loginSegue", sender: nil)
        case 2: performSegue(withIdentifier: "guestuserSegue", sender: nil)
        default: "Error"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //corner radius
        registerBtn.layer.cornerRadius = 10
        loginBtn.layer.cornerRadius = 10
        guestuserBtn.layer.cornerRadius = 10
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
