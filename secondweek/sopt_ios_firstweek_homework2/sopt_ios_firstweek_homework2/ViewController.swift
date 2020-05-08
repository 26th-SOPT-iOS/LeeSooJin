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
    
    @IBOutlet var textfieldCollection: [UITextField]!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
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
//        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
//
//        receiveViewController.id = input_id.text
//        receiveViewController.pw = input_password.text
//
//        self.present(receiveViewController,animated: true, completion: nil)
//   }
    
}

}
