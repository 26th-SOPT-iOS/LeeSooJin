//
//  DataInformation.swift
//  assignment_secondweek_scrollview
//
//  Created by Soojin Lee on 2020/05/15.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import Foundation

struct DataInformation {
  
    var name: String
    var photo: String
    var status: String
    
    init(name: String, photo: String, status: String) {
        
        self.name = name
        self.photo = photo
        self.status = status
    }
}
