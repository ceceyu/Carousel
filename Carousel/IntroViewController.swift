//
//  IntroViewController.swift
//  Carousel
//
//  Created by Cece Yu on 5/17/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 1136)
        scrollView.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        var offset = Float(scrollView.contentOffset.y)

        //tile1View
        
        var tx = convertValue(offset, 0, 568, -30, 0)
        var ty = convertValue(offset, 0, 568, -285, 0)
        var scale = convertValue(offset, 0, 568, 1, 1)
        var rotation = convertValue(offset, 0, 568, -10, 0)
        
        tile1View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tile1View.transform =
            CGAffineTransformScale(tile1View.transform, CGFloat(scale), CGFloat(scale))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        //tile2View
        
        var tx2 = convertValue(offset, 0, 568, 75, 0)
        var ty2 = convertValue(offset, 0, 568, -240, 0)
        var scale2 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation2 = convertValue(offset, 0, 568, -10, 0)
        
        tile2View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2View.transform =
            CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        //tile3View
        
        var tx3 = convertValue(offset, 0, 568, -66, 0)
        var ty3 = convertValue(offset, 0, 568, -415, 0)
        var scale3 = convertValue(offset, 0, 568, 1.7, 1)
        var rotation3 = convertValue(offset, 0, 568, 10, 0)
        
        tile3View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform =
            CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        //tile4View
        
        var tx4 = convertValue(offset, 0, 568, 10, 0)
        var ty4 = convertValue(offset, 0, 568, -408, 0)
        var scale4 = convertValue(offset, 0, 568, 1.6, 1)
        var rotation4 = convertValue(offset, 0, 568, 10, 0)
        
        tile4View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform =
            CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        //tile5View
        
        var tx5 = convertValue(offset, 0, 568, -200, 0)
        var ty5 = convertValue(offset, 0, 568, -480, 0)
        var scale5 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation5 = convertValue(offset, 0, 568, 10, 0)
        
        tile5View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform =
            CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        //tile6View
        
        var tx6 = convertValue(offset, 0, 568, -15, 0)
        var ty6 = convertValue(offset, 0, 568, -500, 0)
        var scale6 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation6 = convertValue(offset, 0, 568, -10, 0)
        
        tile6View.transform =
            CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform =
            CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
    }
    

    @IBAction func onTapSigninButton(sender: AnyObject) {
        self.performSegueWithIdentifier("signinSegue", sender: nil)
    }



}
