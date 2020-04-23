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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func transferData(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
        
        receiveViewController.id = input_id.text
        receiveViewController.pw = input_password.text
     
        self.present(receiveViewController,animated: true, completion: nil)
    }
    
}

