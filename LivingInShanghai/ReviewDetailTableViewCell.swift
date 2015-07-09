

import UIKit

class ReviewDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var reviewContent: UILabel!
    @IBOutlet weak var face: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        face.layer.cornerRadius = 8.0
        face.layer.masksToBounds = true
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
