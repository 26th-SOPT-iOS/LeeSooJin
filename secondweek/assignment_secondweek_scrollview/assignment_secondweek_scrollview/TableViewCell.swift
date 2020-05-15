//
//  TableViewCell.swift
//  assignment_secondweek_scrollview
//
//  Created by Soojin Lee on 2020/05/15.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier: String = "ProfileCell"
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileId: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDataInformation(profileImageName: String, name: String){
        profileImage.image = UIImage(named: profileImageName)
        profileId.text = name

}
}
