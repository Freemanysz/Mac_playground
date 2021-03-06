//
//  CityController.swift
//  TreeNavificationSample
//
//  Created by Freeman on 2016/11/15.
//  Copyright © 2016年 Freeman. All rights reserved.
//

import UIKit

class CityController: UITableViewController {
    
    var cities:NSArray!

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let dict  = self.cities[indexPath.row] as! NSDictionary
        cell.textLabel?.text = dict["name"] as? String

        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index  = self.tableView.indexPathForSelectedRow
        let dict  = self.cities[index!.row] as! NSDictionary
        
        let destination = segue.destination as! DetailController
        destination.urlStr = dict["url"] as! String
        destination.title = dict["name"] as? String
    }
    

}
