//
//  ViewController.swift
//  UserLoginAndRegistationRSSFeedReader
//
//  Created by Administrateur on 08/01/2016.
//  Copyright © 2016 com.epsi.projeti5.userloginandregistrationrssfeedreader. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn");
        
        if(isUserLoggedIn) {
            self.performSegueWithIdentifier("loginView", sender: self);
        }
    }
    
    
    @IBAction func logoutButtonTapped(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false , forKey: "isUserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        self.performSegueWithIdentifier("loginView", sender: self);
    }
    
}

 