//
//  FAQTableViewCell.swift
//  FAQ-design
//
//  Created by Sohila on 24/05/2023.
//

import UIKit

protocol FAQDelegate {
    func pressed()
}

class FAQTableViewCell: UITableViewCell {

    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    
    var pressed: (()->())?
    var delegate: FAQDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonPressed(_ sender: Any) {
        pressed?()
        delegate?.pressed()
    }
}
