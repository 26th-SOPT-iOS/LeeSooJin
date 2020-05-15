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
    private var myProfile: [DataInformation] = []
    
    override func viewDidLoad() {
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none


        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        setdataInformaitons()
    }
      
    private func setdataInformaitons(){
        let data1 = DataInformation(name: "황지은", photo: "jieun", status: "과즙미 팡팡~!")
        let data2 = DataInformation(name: "송지훈", photo: "jihun", status: "아요주정뱅이")
        let data3 = DataInformation(name: "김민희", photo: "minhee", status: "마라샹궈 먹을사람 구해요")
        let data4 = DataInformation(name: "이진수", photo: "profile4Img", status: "hi")
        let data5 = DataInformation(name: "이수진", photo: "profile5Img", status: "hi")
        let data6 = DataInformation(name: "이진수", photo: "profile6Img", status: "hi")
        let data7 = DataInformation(name: "이수진", photo: "profile7Img", status: "hi")
        let data8 = DataInformation(name: "이진수", photo: "profile8Img", status: "hi")
        let data9 = DataInformation(name: "이진수", photo: "profile9Img", status: "hi")
        let data10 = DataInformation(name: "이수진", photo: "oursoptBgImg", status: "bye")
        let my = DataInformation(name: "나는이수진", photo: "profile9Img", status: "하힘드러")

        
        myProfile = [my]
        dataInformations = [data1,data2,data3,data4,data5,data6,data7,data8,data9,data10]
        
    }
}

extension KakaoViewController: UITableViewDelegate {
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88.5
        } else {
            return 62
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            return 0
        } else {
            return 30
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))

        let headerLabel = UILabel()
        let numberOfFriendLabel = UILabel()

        headerLabel.text = "친구 "
        headerLabel.font = UIFont.systemFont(ofSize: 12)
        headerLabel.frame = CGRect.init(x: 15, y: 0, width: 50, height: 30)

        numberOfFriendLabel.text = "\(dataInformations.count-1)"
        numberOfFriendLabel.font = UIFont.systemFont(ofSize: 12)
        numberOfFriendLabel.frame = CGRect.init(x: 40, y: 0, width: 50, height: 30)

        view.addSubview(headerLabel)
        view.addSubview(numberOfFriendLabel)

        return view
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
              if editingStyle == .delete {
                  dataInformations.remove(at: indexPath.row)
                  tableView.deleteRows(at: [indexPath], with: .fade)
              } else if editingStyle == .insert {
                  // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
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
//    cell.imageView.contentMode = UIViewContentMode.scaleAspectFit
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let TableViewCell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for:
            indexPath) as? TableViewCell else { return UITableViewCell() }

        if indexPath.section == 1 {
            
//            TableViewCell.underBar.alpha = 0
            TableViewCell.setDataInformation(profileImageName:dataInformations[indexPath.row].photo,
                                         name: dataInformations[indexPath.row].name,
                                         status: dataInformations[indexPath.row].status)
    

            TableViewCell.profileImage.layer.cornerRadius = 50/2
            TableViewCell.profileImage.topAnchor.constraint(equalTo: TableViewCell.topAnchor, constant: 6).isActive = true
            TableViewCell.profileImage.leadingAnchor.constraint(equalTo: TableViewCell.leadingAnchor, constant: 16).isActive = true
            TableViewCell.profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
            TableViewCell.profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
            
            TableViewCell.profileImage.contentMode = .scaleAspectFill

//            TableViewCell.profileImage.contentMode = .scaleAspectFill
//            TableViewCell.profileImage.layer.cornerRadius = 20 //half of your width or height
            return TableViewCell}
        
        else {
            TableViewCell.setDataInformation(profileImageName: myProfile[0].photo, name: myProfile[0].name, status: myProfile[0].status)

//            TableViewCell.profileImage.layer.cornerRadius = TableViewCell.profileImage.frame.height/2
            TableViewCell.profileImage.layer.cornerRadius = 60/2
            TableViewCell.profileImage.topAnchor.constraint(equalTo: TableViewCell.topAnchor, constant: 13).isActive = true
            TableViewCell.profileImage.leadingAnchor.constraint(equalTo: TableViewCell.leadingAnchor, constant: 16).isActive = true
            TableViewCell.profileImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
            TableViewCell.profileImage.widthAnchor.constraint(equalToConstant: 60).isActive = true

            TableViewCell.profileImage.contentMode = .scaleAspectFill
//            TableViewCell.profileImage.layer.cornerRadius = 20 //half of your width or height

//
            return TableViewCell
        }
        
      
        
    }
}


