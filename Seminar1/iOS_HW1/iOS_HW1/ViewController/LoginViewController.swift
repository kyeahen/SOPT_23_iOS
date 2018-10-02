//
//  LoginViewController.swift
//  iOS_HW1
//
//  Created by 김예은 on 2018. 10. 1..
//  Copyright © 2018년 kyeahen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        emailTextField.text = ""
        pwdTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: 로그인 액션
    @IBAction func loginAction(_ sender: UIButton) {
        
        if isNull() == true {
            simpleAlert(title: "로그인 실패", message: "모든 항목을 입력해주세요.")
        } else {
            let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: ResultViewController.reuseIdentifier) as! ResultViewController
            
            resultVC.id = emailTextField.text
            resultVC.name = pwdTextField.text
            
            self.present(resultVC, animated: true, completion: nil)
        }
    }
    

    //MARK: 회원가입 액션
    @IBAction func joinAction(_ sender: UIButton) {
        let joinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: JoinViewController.reuseIdentifier) as! JoinViewController
        
        self.navigationController?.pushViewController(joinVC, animated: true)
    }
    
    //MARK: 널 체크 함수
    func isNull() -> Bool {
        if gbno(emailTextField.text?.isEmpty) || gbno(pwdTextField.text?.isEmpty) {
            return true
        } else {
            return false
        }
    }
    
    //MARK: unwind segue
    @IBAction func unwindToLogin (segue : UIStoryboardSegue) {}
    
}

