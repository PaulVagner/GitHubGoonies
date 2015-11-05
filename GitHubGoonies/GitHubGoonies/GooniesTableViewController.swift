//  This controls Goonies Table View Controller
//  GooniesTableViewController.swift
//  GitHubGoonies

import UIKit

class GooniesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
    tableView.reloadData()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //queuing code to queu and deque the cell data from the "Goonie Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier("GoonieCell", forIndexPath: indexPath) as! GoonieTableViewCell

        
        
         let user = users[indexPath.row]
        
        if let username = user["login"] as? String {
           
          
            
            cell.usernameLabel.text = username
            
        }
        
        // this obtains the Avatar URL from the site key.
        if let avatarURL = user["avatar_url"] as? String {
            
            cell.avatarImageView.hidden = false
            
            if let url = NSURL(string: avatarURL) {
                
                if let data = NSData(contentsOfURL: url){
                    
                    if let image = UIImage(data: data) {
                        
                      cell.avatarImageView.image = image
                        
                        
                    }
                }
                
            }
        
        } else {
            
            cell.avatarImageView.hidden = true
            
        }
        
        // Configure the cell...

        return cell
    
    }
    
    //MARK: -> Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
       if let detailVC = segue.destinationViewController as? GoonieDetailViewController {
           
            if let cell = sender as? UITableViewCell {
            
                if let indexPath = tableView.indexPathForCell(cell) {
                    
                    detailVC.userIndex = indexPath.row
                    
                }
                
            }
            
        }
        
    }
    

}




