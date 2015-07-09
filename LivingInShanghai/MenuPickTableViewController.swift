
import UIKit

class MenuPickTableViewController: UITableViewController {
    var menuType:Int = 0
    var potPickedIndex:Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = "Menu - " + (menu[menuType]?.name ?? "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return menu[menuType]?.itemsID.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MenuPickCell", forIndexPath: indexPath) as! MenuPickTableViewCell
        
        let menuData = menuItmes[menu[menuType]!.itemsID[indexPath.item]]!
        cell.id = menuData.id
        cell.pic.image = UIImage(named: menuData.titlePic)
        cell.name.text = menuData.name
        cell.intro.text = menuData.intro
        cell.priceLabel.text = menuData.price.description
        
        if menuType == 1 {  //pot
            cell.countLabel.removeFromSuperview()
            cell.stepper.removeFromSuperview()
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        
        if (menuType == 1) {
            if (potPickedIndex >= 0) {
                let selectCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: potPickedIndex,        inSection: 0)) as! MenuPickTableViewCell
                selectCell.accessoryType = UITableViewCellAccessoryType.None
                
                order.sub(selectCell.id)
            }
        
            potPickedIndex = indexPath.item
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
            order.add((tableView.cellForRowAtIndexPath(indexPath) as! MenuPickTableViewCell).id)
        }
        
        return indexPath
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
