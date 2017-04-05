//
//  ViewController.swift
//  SimpleTable
//
//  Created by Devstn4 on 4/4/17.
//  Copyright © 2017 Solsteace. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Hide the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /*
     *  UITableViewDataSource
     */
    
    // this method inform the table view the total number of rows in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section. 
        return restaurantNames.count
    }
    
    // will be called every time a table row is displayed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // Configure the cell... 
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        return cell
    }
}

