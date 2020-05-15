//
//  Music.swift
//  thirdweek_seminar
//
//  Created by Soojin Lee on 2020/05/09.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(coverName: String, singer: String, title: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
    
}
