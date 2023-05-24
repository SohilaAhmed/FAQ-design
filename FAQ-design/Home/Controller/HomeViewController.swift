//
//  ViewController.swift
//  FAQ-design
//
//  Created by Sohila on 24/05/2023.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var fAQTableView: UITableView!
    
    var answerViewState = 0
    var cellHeight: CGFloat = 160
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    override func viewDidAppear(_ animated: Bool) {
//        fAQTableView.reloadData()
    }

}

extension HomeViewController: ReloadProtocol{
    func ReloadTable() {
        print(cellHeight)
        fAQTableView.reloadData()
    }
}
