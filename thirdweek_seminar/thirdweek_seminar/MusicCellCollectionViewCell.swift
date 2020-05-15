//
//  MusicCellCollectionViewCell.swift
//  thirdweek_seminar
//
//  Created by Soojin Lee on 2020/05/09.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class MusicCellCollectionViewCell: UICollectionViewCell {
    static let identifier:String = "MusicCellCollectionViewCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!

    func set(_ musicInformation:Music){
        albumImageView.image = musicInformation.albumImg
        titleLabel.text = musicInformation.musicTitle
        singerLabel.text = musicInformation.singer
    }
    
}
