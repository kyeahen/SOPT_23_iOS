//
//  TableViewController.swift
//  iOS_with_design
//
//  Created by 김예은 on 17/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setBackBtn()
        self.tableView.tableFooterView = UIView(frame : .zero)
    }

}

extension UITableViewController {
    
    //백버튼
    func setBackBtn(){
        let backBTN = UIBarButtonItem(image: UIImage(named: "ic_arrow_back"),
                                
        style: .plain,
        target: self,
        action: #selector(self.pop))
        navigationItem.leftBarButtonItem = backBTN
    
        navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
    }
    @objc func pop(){
        self.navigationController?.popViewController(animated: true)
    }
    
}
