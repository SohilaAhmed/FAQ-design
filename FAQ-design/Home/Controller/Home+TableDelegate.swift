//
//  Home+TableDelegate.swift
//  FAQ-design
//
//  Created by Sohila on 24/05/2023.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
//
//        cell.showAnswerBtnOutlet.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
//
//        return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQTableViewCell", for: indexPath) as! FAQTableViewCell
        if index == indexPath.row {
            cell.aLabel.isHidden = false
        }else{
            cell.aLabel.isHidden = true
        }
        cell.pressed = {
            print("fromClousre")
        }
        cell.delegate = self
        return cell
    }
    
//    @objc func buttonTapped(_ sender: UIButton) {
//        fAQTableView.beginUpdates()
//        fAQTableView.endUpdates()
//
//    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let cell = tableView.cellForRow(at: indexPath) as? HomeTableViewCell
//        if(cell?.state == 1){
//            return 160
//        }else{
//            return 68
//        }
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        fAQTableView.reloadData()
    }
}

extension HomeViewController: FAQDelegate {
    func pressed() {
        print("fromDelegate")
        index = 2
        fAQTableView.reloadData()
    }
    
    
}
