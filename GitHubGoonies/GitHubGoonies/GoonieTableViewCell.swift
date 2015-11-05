// This controls the Goonies Table View Controller...
//  GoonieTableViewCell.swift

import UIKit

class GoonieTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
   
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
