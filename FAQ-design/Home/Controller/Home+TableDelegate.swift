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
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
//        cell.heigth
        cell.showAnswerBtnOutlet.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
//        cell.rp = self
        
        return cell
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        fAQTableView.beginUpdates()
        fAQTableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath) as? HomeTableViewCell
        if(cell?.state == 1){
            return 160
        }else{
            return 65
        }
//        if(answerViewState == 1){
//            return 65
//        }else{
//            return 160
//        }
//        print(cellHeight)
//        return cellHeight
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return cellHeight
//    }
}
