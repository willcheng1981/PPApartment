

import UIKit

class MenuPickTableViewCell: UITableViewCell {
    var id:Int = 0
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var intro: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func changeValue(sender: UIStepper) {
        let oldValue = order.get(id)
        if (oldValue > Int(stepper.value)) {
            order.sub(id)
        }
        else {
            order.add(id)
        }
        
        countLabel.text = order.get(id).description
    }
}
