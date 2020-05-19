//
//  ViewController.swift
//  sopt_ios_firstweek_homework2
//
//  Created by Soojin Lee on 2020/04/18.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var input_id: UITextField!
@IBOutlet weak var input_password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        
        guard let inputID = input_id.text else { return }
        guard let inputPWD = input_password.text else { return }
        
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
            switch networkResult {
                
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
                    "customTabbarController") as? UITabBarController else { return }
                tabbarController.modalPresentationStyle = .fullScreen
                self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "로그인 실패", message: message,
                                                            preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
                
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")
            }
        }
    }
    @IBOutlet var textfieldCollection: [UITextField]!
    @IBOutlet weak var buttonCollection: UIButton!
    
    
    override func viewDidLoad() {
//         setLayout()
        super.viewDidLoad()
//        setLayout()
       
    }

//    func setLayout(){
//
//
//        self.buttonCollection.layer.cornerRadius = 0.07 * buttonCollection.bounds.size.width
//
//       for textfield in textfieldCollection{
//           textfield.layer.cornerRadius = 0.07 * textfield.bounds.size.width
//       }
//    }

//    @IBAction func transferData(_ sender: Any) {
//        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
//
//        receiveViewController.id = input_id.text
//        receiveViewController.pw = input_password.text
//
//        self.present(receiveViewController,animated: true, completion: nil)
//   }



}
