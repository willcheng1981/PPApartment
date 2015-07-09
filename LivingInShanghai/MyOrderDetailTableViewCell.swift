

import UIKit

class MyOrderDetailTableViewCell: UITableViewCell {
    var id:Int = 0
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
