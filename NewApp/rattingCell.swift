//
//  rattingCell.swift
//  NewApp
//
//  Created by user on 13.07.2023.
//

import UIKit

class rattingCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var scoreCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
}
