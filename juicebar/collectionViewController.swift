//
//  collectionViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/25/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit

class collectionViewController: UIViewController {

    @IBAction func getmenuid(_ sender: UIButton) {
         let menu_id = sender.tag
      self.performSegue(withIdentifier: "viewsubmenuSegue", sender: menu_id)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "viewsubmenuSegue" {
          let detailVC =  segue.destination as? submenuViewController
          detailVC?.menu_id = sender as! Int
      }
   }
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
