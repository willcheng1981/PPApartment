

import UIKit

class MenuCatTableViewCell: UITableViewCell {
    
    var typeID: Int = 0
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var intro: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
