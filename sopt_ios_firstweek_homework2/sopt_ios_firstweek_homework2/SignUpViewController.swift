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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func transferData(_ sender: Any) {
        guard let recieveSignupData = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
        recieveSignupData.id = signup_id.text
        recieveSignupData.pw = signup_pw.text
   self.present(recieveSignupData,animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
