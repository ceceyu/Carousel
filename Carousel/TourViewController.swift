//
//  TourViewController.swift
//  Carousel
//
//  Created by Cece Yu on 5/17/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class TourViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 1280, height: 526)
        
            func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
                // Get the current page based on the scroll offset
                var page : Int = Int(round(scrollView.contentOffset.x / 320))
                
                // Set the current page, so the dots will update
                pageControl.currentPage = page
            }

        
//            // Page isn't working, so this won't work either
//            if page == 3 {
//                UIView.animateWithDuration(0.4) {
//                    self.backupButtonImageView.alpha = 1
//                    self.backupSwitch.alpha = 1
//                }
//            }
//            else {
//                UIView.animateWithDuration(0.4) {
//                    self.backupButtonImageView.alpha = 0
//                    self.backupSwitch.alpha = 0
//                }
//            }
//        
//            if page == 3 {
//                UIView.animateWithDuration(0.2) {
//                    self.pageControl.alpha = 0
//                }
//            }
//            else {
//                UIView.animateWithDuration(0.2) {
//                    self.pageControl.alpha = 1
//                }
//            }
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
