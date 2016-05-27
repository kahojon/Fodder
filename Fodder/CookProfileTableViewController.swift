//
//  CookProfileTableViewController.swift
//  Fodder
//
//  Created by Jonathan Leung on 2016-05-12.
//  Copyright © 2016 Housewives. All rights reserved.
//

import UIKit

class CookProfileTableViewController: UITableViewController {
    
    // MARK: Properties
    var kitchen = [KitchenProfile]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleKitchen()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadSampleKitchen(){
        let photo1 = UIImage(named: "profileBanner")!
        let photo2 = UIImage(named: "cookProfile")!
        let kitchenProfile = KitchenProfile(cookName: "Jonathan Leung", bannerPhoto: photo1, profilePhoto: photo2, rating: 0, kitchenName: "Chez Jonathan", location: "Montreal, QC  4.0 km", distance: "14 km")!
        let jennyShen = KitchenProfile(cookName: "Jenny Shen", bannerPhoto: UIImage(named: "cookiesJenny"), profilePhoto: UIImage(named: "jennyShen"), rating: 4, kitchenName: "Chez Jenny", location: "Montreal, QC  5.0 km", distance: "5.0 km")!
        let christinaSvoboda = KitchenProfile(cookName: "Christina Svoboda", bannerPhoto: UIImage(named: "sushi"), profilePhoto: UIImage(named: "christinaSvo"), rating: 5, kitchenName: "Chez Christina", location: "Montreal, QC  10.0 km", distance: "15.0 km")!
        let emilyWang = KitchenProfile(cookName: "Emily Wang", bannerPhoto: UIImage(named: "cupcake"), profilePhoto: UIImage(named: "emily"), rating: 3, kitchenName: "Chez Emily", location: "Montreal, QC  15.0 km", distance: "15.0 km")!
        
        kitchen += [kitchenProfile,jennyShen,christinaSvoboda,emilyWang]
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kitchen.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "CookProfileTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CookProfileTableViewCell
        
        let kitchens = kitchen[indexPath.row]
        
        cell.bannerImage.image = kitchens.bannerPhoto
        cell.profileImage.image = kitchens.profilePhoto
        cell.profileImage.layer.borderWidth = 2
        cell.profileImage.layer.masksToBounds = false
        cell.profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        cell.profileImage.layer.cornerRadius = cell.profileImage.frame.height/2
        cell.profileImage.clipsToBounds = true
        cell.ratingControl.rating = kitchens.rating
        cell.kitchenTitle.text = kitchens.kitchenName
        cell.kitchenTitle.font = UIFont(name: "Thonburi-Bold", size: 18)
        cell.kitchenTitle.textColor = UIColor(red:1.00, green:0.60, blue:0.20, alpha:1.0)
        cell.location.text = kitchens.location
        cell.location.font = UIFont(name: "Thonburi", size: 8)
        cell.cookName.text = kitchens.cookName
        cell.cookName.font = UIFont(name: "Thonburi", size: 10)

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 270.0;//Choose your custom row height
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
