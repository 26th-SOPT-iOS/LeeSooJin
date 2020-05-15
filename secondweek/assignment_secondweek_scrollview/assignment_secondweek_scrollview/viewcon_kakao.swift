//
//  viewcon_kakao.swift
//  assignment_secondweek_scrollview
//
//  Created by Soojin Lee on 2020/05/15.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class viewcon_kakao: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    private var dataInformations: [DataInformation]=[]
 

    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        setdataInformaitons()
        // Do any additional setup after loading the view.
    }
    
    private func setdataInformaitons(){
        let data1 = DataInformation(name: "이수진", photo: "profile1Img")
        let data2 = DataInformation(name: "이진수", photo: "profile2Img")
        let data3 = DataInformation(name: "이수진", photo: "profile3Img")
        let data4 = DataInformation(name: "이진수", photo: "profile4Img")
        let data5 = DataInformation(name: "이수진", photo: "profile1Img")
        let data6 = DataInformation(name: "이진수", photo: "profile2Img")
        let data7 = DataInformation(name: "이수진", photo: "profile3Img")
        let data8 = DataInformation(name: "이진수", photo: "profile4Img")
        


        dataInformations = [data1,data2]

    }
   

}

extension viewcon_kakao: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 2

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section
        {
        case 0 :
            return 1
        case 1 :
            return self.friends.count
        default :
            return 0
        }
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as? ProfileCell  else { return UITableViewCell() }

        if indexPath.section == 0 {
            cell.settings(friends[0])
            cell.profileImage.layer.cornerRadius = cell.profileImage.frame.height/2

            return cell
        } else {
            cell.settings(friends[indexPath.item+1])

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88
        } else {
            return 66
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {

        if section == 0 {
            return 0
        } else {
            return 20
        }
    }
    
    
}

extension viewcon_kakao: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
