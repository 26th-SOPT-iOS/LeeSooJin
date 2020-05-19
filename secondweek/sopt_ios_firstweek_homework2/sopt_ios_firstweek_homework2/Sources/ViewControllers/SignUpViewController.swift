//
//  SignUpViewController.swift
//  sopt_ios_firstweek_homework2
//
//  Created by Soojin Lee on 2020/04/18.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signup_id: UITextField!
    @IBOutlet weak var signup_pw: UITextField!
    @IBOutlet weak var signup_name: UITextField!
    @IBOutlet weak var signup_phone: UITextField!
    @IBOutlet weak var signup_email: UITextField!
    
    

    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet var textfieldCollection: [UITextField]!
    
    @IBAction func Signupbutton(_ sender: Any) {
        
        guard let signupid = signup_id.text else{return}
        guard let signuppw = signup_pw.text else{return}
        guard let signupname = signup_name.text else{return}
        guard let signupemail = signup_email.text else{return}
        guard let signupphone = signup_phone.text else{return}
        
        SignupService.shared.signup(id:  signupid, pwd: signuppw, name: signupname , email: signupemail, phone: signupphone ) { networkResult in
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()

        // Do any additional setup after loading the view.
    }
    
    func setLayout(){
    
    for button in buttonCollection{
        button.layer.cornerRadius = 0.07 * button.bounds.size.width
    }
    for textfield in textfieldCollection{
        textfield.layer.cornerRadius = 0.07 * textfield.bounds.size.width
    }
        
//    @IBAction func transferData(_ sender: Any) {
//        guard let recieveSignupData = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
//        recieveSignupData.id = signup_id.text
//        recieveSignupData.pw = signup_pw.text
//   self.present(recieveSignupData,animated: true, completion: nil)
    }
    
   
    }
