//
//  HomeTableViewCell.swift
//  FAQ-design
//
//  Created by Sohila on 24/05/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var showAnswerBtnOutlet: UIButton!
    @IBOutlet weak var answerView: UIView!
     
    var state = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
         
        answerView.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }

    @IBAction func showAnswerBtn(_ sender: Any) {
        if(state == 0){
            answerView.isHidden = false
            state = 1
        }else{
            answerView.isHidden = true
            state = 0
        }
    }
}
