//
//  TableViewController.swift
//  MyContactListCD
//
//  Created by Miller, Benjamin A. on 6/1/16.
//  Copyright © 2016 Cascadia College. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var contacts = ["Jim", "Justin", "John", "Dana", "Rosie", "Jeremy", "Sarah", "Matt", "Joe", "Donald", "Jeff"]
    
    var Contactinfo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Contacts", forIndexPath: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = contacts[indexPath.row]
        
        return cell
    }
}
