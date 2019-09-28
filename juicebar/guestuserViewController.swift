//
//  guestuserViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit
import SideMenuSwift
class guestuserViewController: UIViewController {
    
    @IBOutlet weak var viewcollectionBtn: UIButton!
    @IBOutlet weak var deliveryserviceBtn: UIButton!
    
    @IBAction func getBtn(sender : UIButton)
    {
        sender.btnAnimation()
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "collectionSegue", sender: nil)
        case 1:
            performSegue(withIdentifier: "deliverySegue", sender: nil)
        default: print("Error")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewcollectionBtn.layer.cornerRadius = 10
        deliveryserviceBtn.layer.cornerRadius = 10
    }

}
