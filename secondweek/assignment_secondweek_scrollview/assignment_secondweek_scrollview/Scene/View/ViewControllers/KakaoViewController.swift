//
//  viewcon_kakao.swift
//  assignment_secondweek_scrollview
//
//  Created by Soojin Lee on 2020/05/15.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class KakaoViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var dataInformations: [DataInformation] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        setdataInformaitons()
    }
    
    private func setdataInformaitons(){
        let data1 = DataInformation(name: "이수진", photo: "profile1Img", status: "hi")
        let data2 = DataInformation(name: "이진수", photo: "profile2Img", status: "hi")
        let data3 = DataInformation(name: "이수진", photo: "profile3Img", status: "hi")
        let data4 = DataInformation(name: "이진수", photo: "profile4Img", status: "hi")
        let data5 = DataInformation(name: "이수진", photo: "profile5Img", status: "hi")
        let data6 = DataInformation(name: "이진수", photo: "profile6Img", status: "hi")
        let data7 = DataInformation(name: "이수진", photo: "profile7Img", status: "hi")
        let data8 = DataInformation(name: "이진수", photo: "profile8Img", status: "hi")
        let data9 = DataInformation(name: "이진수", photo: "profile9Img", status: "hi")
        
        dataInformations = [data1,data2,data3,data4,data5,data6,data7,data8,data9]
        
    }
}

extension KakaoViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88
        } else {
            return 88
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

extension KakaoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
      
          return 2
      }

      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           switch section
                 {
                 case 0 :
                     return 1
                 case 1 :
                     return dataInformations.count
                 default :
                     return 0
                 }

      }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let TableViewCell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for:
            indexPath) as? TableViewCell else { return UITableViewCell() }
        TableViewCell.setDataInformation(profileImageName:dataInformations[indexPath.row].photo,
                                         name: dataInformations[indexPath.row].name,
                                         status: dataInformations[indexPath.row].status)
        return TableViewCell
    }
}


//extension viewcon_kakao: UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return 2
//
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section
//        {
//        case 0 :
//            return 1
//        case 1 :
//            return self.dataInformations.count
//        default :
//            return 0
//        }
//
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//       guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as? TableViewCell  else { return UITableViewCell() }
//
//        if indexPath.section == 0 {
//            cell.setDataInformation(aaa[0])
//            cell.profileImage.layer.cornerRadius = cell.profileImage.frame.height/2
//
//            return cell
//        } else {
//            cell.setDataInformation(aaa[indexPath.item+1])
//
//            return cell
//        }
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return 88
//        } else {
//            return 66
//        }
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//
//        if section == 0 {
//            return 0
//        } else {
//            return 20
//        }
//    }
//
//
//}
//
//extension viewcon_kakao: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80
//    }
//}
//
//
//
