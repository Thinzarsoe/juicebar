//
//  welcomeViewController.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
class welcomeViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var sv: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    
    var width:CGFloat = 0
    var height:CGFloat = 0
    var currentIndex:Int = 0
    var direction = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sv.delegate = self
        width = view.frame.size.width
        height = view.frame.size.height
        sv.isPagingEnabled = true
        
         let images = ["ju1.jpg","ju2.jpg","ju3.jpg","ju4.jpg","ju5.jpg", "ju6.jpg","ju7.jpg","ju8.jpg","ju9.jpg"]
        
            for i in images{
                addImage(i)
            }
        pageControl.numberOfPages = images.count
        
        Timer.scheduledTimer(withTimeInterval: 1.2, repeats: true) { (timer) in
                self.pageControl.currentPage = self.currentIndex
                let rect = CGRect(x: self.width * CGFloat(self.currentIndex) , y: 0, width: self.width, height: self.height)
            self.sv.scrollRectToVisible(rect, animated: true)
             self.currentIndex += 1 * self.direction
            if self.currentIndex > images.count{
            self.performSegue(withIdentifier: "firstSegue", sender: nil)
            }

        }

    }
    func addImage(_ imageName:String)
    {
        let imageView = UIImageView(image: UIImage(named: imageName))
         imageView.frame = CGRect(x: sv.contentSize.width, y: 0, width: width, height: height)
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        sv.addSubview(imageView)
        sv.contentSize = CGSize(width: sv.contentSize.width + width, height: height)
    }
    
 
}
