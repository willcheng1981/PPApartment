

import UIKit

class HotpotTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        (navigationItem as? MainNavigationItem)?.initItem(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listedHotpotSeqNo.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell", forIndexPath: indexPath) as! ListTableViewCell
        
        let seqNo = listedHotpotSeqNo[indexPath.item]
        
        if let shopInfo = allHotpots[seqNo] {
            cell.seqNo = seqNo
            cell.introPic.image = UIImage(named: shopInfo.bigPicUrl)
            cell.name.text = shopInfo.name
            cell.location.text = shopInfo.location
            cell.gradePic.image = UIImage(named: "grade")
            cell.reviews.text = shopInfo.reviewCount.description
        }
        
        return cell
    }

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


    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if let cell = sender as? ListTableViewCell {            
            (segue.destinationViewController as? HotpotDetailViewController)?.shopSeqNo = cell.seqNo
        }
    }
    

}
