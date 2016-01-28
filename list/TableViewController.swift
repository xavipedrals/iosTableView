//
//  TableViewController.swift
//  list
//
//  Created by mac33 on 27/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //@IBOutlet weak var textLabel: UILabel!
    var pressedCellIdentifier:Int!
    
    var records = [("Most piercings, single count (male)", "most-piercings"),
        ("Fastest growing plant", "fastest-growing-plant"),
        ("Tallest mountain", "tallest-mountain"),
        ("Largest spider",  "largest-spider"),
        ("Fastest internet connection (country)", "fastest-internet-country"),
        ("Heaviest birth - triplets (current)",  "heaviest-birth"),
        ("Largest crocodile in captivity (living)","largest-crocodile"),
        ("Longest fur on a cat", "logenst-fur-cat"),
        ("Highest divorce rate", "highest-divorce-rate"),
        ("Longest ears on a dog - living", "longest-ears-dog"),
        ("Oldest person ever", "oldest-person-ever")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Guiness World Records"
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return records.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
        pressedCellIdentifier = indexPath.row
        performSegueWithIdentifier("showCell", sender: self)
            
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("cellWithSwitch") as? CellViewControllerTableViewCell {
           
            let record = records[indexPath.row]
            
            cell.recordImageView.image = UIImage(named: record.1)
            cell.recordLabel.text = record.0
            
            return cell
        }
        
        //cell.textLabel?.text = records[indexPath.row].0
        //cell.imageView?.image = records[indexPath.row].1

        // Configure the cell...

        return UITableViewCell()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "showCell" {
                if let destination = segue.destinationViewController as? DetailViewController {
                    let record = records[pressedCellIdentifier]
                    destination.record = record
                }
            }
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
