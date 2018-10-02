//
//  ResultViewController.swift
//  iOS_HW1
//
//  Created by 김예은 on 02/10/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var id: String?
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        idLabel.text = id
        nameLabel.text = name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: 로그아웃 액션 - unwind
    @IBAction func logoutAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToLogin", sender: self)
    }
    

}
