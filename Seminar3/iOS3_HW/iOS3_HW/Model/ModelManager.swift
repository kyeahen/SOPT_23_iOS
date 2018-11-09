//
//  ModelManager.swift
//  iOS3_HW
//
//  Created by 김예은 on 09/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import Foundation

struct ModelManager {
    
    static let sharedInstance = ModelManager()
    
    var musics: [Music] = [Music]()
    
    init() {
        let music1 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "Tempo", artist: "EXO")
        let music2 = Music(image: #imageLiteral(resourceName: "album_iu.jpg"), title: "삐삐", artist: "IU")
        let music3 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "Sign", artist: "EXO")
        let music4 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "닿은 순간 (Ooh La La La)", artist: "EXO")
        let music5 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "Gravity", artist: "EXO")
        let music6 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "가끔 (With You)", artist: "EXO")
        let music7 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "24/7", artist: "EXO")
        let music8 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "후폭풍 (Bad Dream)", artist: "EXO")
        let music9 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "여기 있을게 (Smile On My Face)", artist: "EXO")
        let music10 = Music(image: #imageLiteral(resourceName: "exo_tempo.jpg"), title: "오아시스 (Oasis)", artist: "EXO")
        
        self.musics = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
        
        self.musics = musics.sorted(by: { $0.title < $1.title})
        

    }

}
