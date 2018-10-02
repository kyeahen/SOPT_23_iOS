//
//  JoinViewController.swift
//  iOS_HW1
//
//  Created by 김예은 on 02/10/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.topItem!.title = ""

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: 회원가입 액션
    @IBAction func joinAction(_ sender: UIButton) {
        
        if isNull() == true {
            
            simpleAlert(title: "회원가입 실패", message: "모든 항목을 입력해주세요.")
            
        } else {
            let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: ResultViewController.reuseIdentifier) as! ResultViewController
            
            resultVC.id = emailTextField.text
            resultVC.name = nameTextField.text
            
            self.present(resultVC, animated: true, completion: nil)
        }
    }
    
    //MARK: 널 체크 함수
    func isNull() -> Bool {
        
        if gbno(emailTextField.text?.isEmpty) || gbno(pwdTextField.text?.isEmpty) || gbno(nameTextField.text?.isEmpty) {
            return true
        } else {
            return false
        }
    }
    


}
