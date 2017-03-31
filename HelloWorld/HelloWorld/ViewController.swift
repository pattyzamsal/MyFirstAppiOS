//
//  ViewController.swift
//  HelloWorld
//
//  Created by Devstn4 on 3/30/17.
//  Copyright © 2017 Solsteace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Method that is called by the Interface Builder to show the alert
    @IBAction func showMessage() {
        // create an object of UIAlertController type
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        // Add action to the alert
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        // show the alert
        present(alertController, animated: true, completion: nil)
    }
}

