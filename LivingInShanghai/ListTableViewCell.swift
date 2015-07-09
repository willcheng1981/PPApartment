
import UIKit

class ListTableViewCell: UITableViewCell {

    var seqNo: Int = 0
    @IBOutlet weak var introPic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var gradePic: UIImageView!
    @IBOutlet weak var reviews: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
