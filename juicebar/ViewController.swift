//
//  ViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
class ViewController: UIViewController {

    var loadingView:NVActivityIndicatorView?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        var timer = Timer()
        OperationQueue.main.addOperation {
            timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.gotoHome), userInfo: nil, repeats: false)
            
        }
    }

    @objc func gotoHome(){
        performSegue(withIdentifier: "welcomeSegue", sender: nil)
        
    }
    
    func setup(){
        let loadingFrame = CGRect(x: 150, y: 600, width: 100, height: 50)
       loadingView = NVActivityIndicatorView(frame: loadingFrame)
        loadingView?.type = .ballBeat
        loadingView?.color = UIColor.black
        view.addSubview(loadingView!)
        loadingView!.startAnimating()
        
    }
}

