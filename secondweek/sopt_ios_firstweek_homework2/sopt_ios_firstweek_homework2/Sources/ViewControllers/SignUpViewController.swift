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


    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet var textfieldCollection: [UITextField]!
    
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
