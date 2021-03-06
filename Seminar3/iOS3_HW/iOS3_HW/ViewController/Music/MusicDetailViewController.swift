//
//  MusicDetailViewController.swift
//  iOS3_HW
//
//  Created by 김예은 on 09/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class MusicDetailViewController: UIViewController {
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var musicTitle: String?
    var artist: String?
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        albumImageView.image = image
        titleLabel.text = musicTitle
        artistLabel.text = artist
        
    }

}
