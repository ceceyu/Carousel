//
//  SignInViewController.swift
//  Carousel
//
//  Created by Cece Yu on 5/17/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    var keyboardOnScreen = false
    
    @IBOutlet weak var formContainerView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        if !keyboardOnScreen {
            UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
                
                self.formContainerView.center.y = self.formContainerView.center.y - 135
                self.keyboardOnScreen = true
                
                }, completion: nil)
        }
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        if keyboardOnScreen {
            UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
                
                self.formContainerView.center.y = self.formContainerView.center.y + 135
                self.keyboardOnScreen = false
                
                }, completion: nil)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onTapSignin(sender: AnyObject) {
        if emailField.text.isEmpty || passwordField.text.isEmpty {
            // Tell them that it can't be empty
            var alertView = UIAlertView(title: "Email required", message: "Please enter your email address", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else if emailField.text == "cece@me.com" && passwordField.text == "pass" {
            var alertView = UIAlertView(title: "Signing in", message: "", delegate: self, cancelButtonTitle: nil)
            alertView.show()
            delay(2) {
                alertView.dismissWithClickedButtonIndex(-1, animated: true)
            }
            delay(2) {
                self.performSegueWithIdentifier("tourSegue", sender: nil)
            }
        } else {
            var alertView = UIAlertView(title: "Signing in", message: "", delegate: self, cancelButtonTitle: nil)
            alertView.show()
            delay(2) {
                alertView.dismissWithClickedButtonIndex(-1, animated: true)
            }
            var alertView2 = UIAlertView(title: "Sign In Failed", message: "Incorrect email or password", delegate: self, cancelButtonTitle: "OK")
            delay (2) {
                alertView2.show()
            }
        }
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}