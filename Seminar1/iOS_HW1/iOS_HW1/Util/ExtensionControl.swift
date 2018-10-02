//
//  ExtensionControl.swift
//  iOS_HW1
//
//  Created by 김예은 on 02/10/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    //MARK: Optional - Bool
    func gbno(_ value: Bool?) -> Bool {
        return value ?? true
    }
    
    //MARK: 기본 팝업
    func simpleAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension NSObject {
    
    //MARK: Storyboard identifier
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
