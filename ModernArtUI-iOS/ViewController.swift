//
//  ViewController.swift
//  ModernArtUI-iOS
//
//  Created by Leandro on 2/5/15.
//  Copyright (c) 2015 Leandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var block1: UIImageView!
    @IBOutlet var block2: UIImageView!
    @IBOutlet var block3: UIImageView!
    @IBOutlet var block4: UIImageView!
    @IBOutlet var block5: UIImageView!
    @IBOutlet var block6: UIImageView!
    @IBOutlet var block7: UIImageView!
    @IBOutlet var block8: UIImageView!
    @IBOutlet var block9: UIImageView!
    @IBOutlet var block10: UIImageView!
    
    @IBAction func colorSliderValueChanged(sender: UISlider) {
        
        var currentValue: CGFloat = CGFloat(sender.value)
        
        var block: UIImageView
        
        for var i=1; i<=10; i++ {
            block = view.viewWithTag(i) as UIImageView
            block.alpha = currentValue
        }
        
    }
    
    @IBAction func infoButtonPressed(sender: UIBarButtonItem) {
        
        let messageBox = UIAlertController(title: nil, message: "Inspired by the works of artists such as Piet Mondrian and Ben Nicholson.\n\nClick below to learn more!", preferredStyle: UIAlertControllerStyle.Alert)
        let websiteAction = UIAlertAction(title: "Visit MOMA", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in self.actionGoToWebsite() }
        let dismissAction = UIAlertAction(title: "Not Now", style: UIAlertActionStyle.Cancel) { (UIAlertAction) -> Void in self.actionDismiss() }
        
        messageBox.addAction(websiteAction)
        messageBox.addAction(dismissAction)
        presentViewController(messageBox, animated: true) { }
        
    }
    
    func actionGoToWebsite() {
        
        println("Go to website!")
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.moma.org")!)
        
    }
    
    func actionDismiss() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

