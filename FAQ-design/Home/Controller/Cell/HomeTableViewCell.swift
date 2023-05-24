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
    
//    var rp: ReloadProtocol?
    var state = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
         
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }

    @IBAction func showAnswerBtn(_ sender: Any) {
//        let storyboard =  UIStoryboard(name: "Home", bundle: nil)
//        let HomeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        if(state == 0){
            answerView.isHidden = false
            state = 1
//            HomeVC.answerViewState = 0
//            HomeVC.cellHeight = 60
        }else{
            answerView.isHidden = true
            state = 0
//            HomeVC.answerViewState = 1
//            HomeVC.cellHeight = 60
        }
        
        
        
//        rp?.ReloadTable()
        
        
    }
}
