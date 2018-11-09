//
//  Music.swift
//  iOS3_HW
//
//  Created by 김예은 on 09/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import Foundation
import UIKit

struct Music {
    
    var image: UIImage
    var title: String
    var artist: String
    
    init(image: UIImage, title: String, artist: String) {
        self.image = image
        self.title = title
        self.artist = artist
    }
}
