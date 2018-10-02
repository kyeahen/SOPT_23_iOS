//
//  ViewController.swift
//  iOS_HW2
//
//  Created by 김예은 on 02/10/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var alertStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.circleImageView()
        
        alertStackView.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: 좋아요 액션
    @IBAction func likeAction(_ sender: UIButton) {
        
        likeButton.isSelected = !likeButton.isSelected
        
        if likeButton.isSelected {
            likeButton.setImage(#imageLiteral(resourceName: "heartFull"), for: .normal)
            alertStackView.isHidden = false
        } else {
            likeButton.setImage(#imageLiteral(resourceName: "heartEmpty"), for: .normal)
            alertStackView.isHidden = true
        }
    }
}

extension UIImageView {
    
    //MARK: Circle ImageView
    func circleImageView() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
    }
}

