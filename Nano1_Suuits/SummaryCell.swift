//
//  SummaryCell.swift
//  Nano1_Suuits
//
//  Created by audrey on 29/04/22.
//

import UIKit

class SummaryCell: UITableViewCell {

    @IBOutlet weak var SummaryLabel: UILabel!
    @IBOutlet weak var sugarAmount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
