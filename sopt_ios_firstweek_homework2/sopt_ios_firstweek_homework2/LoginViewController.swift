//
//  LoginViewController.swift
//  sopt_ios_firstweek_homework2
//
//  Created by Soojin Lee on 2020/04/18.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var output_id: UILabel!
    @IBOutlet weak var output_pw: UILabel!
    
    var id: String?
    var pw: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
        
        // Do any additional setup after loading the view.
    }
    
 
    
    private func setLabels(){
        guard let id = self.id else{return}
        guard let pw = self.pw else{return}
        
        output_id.text=id
        output_pw.text=pw
        
    }
    
    @IBAction func backScreen(_ sender: Any) {self.dismiss(animated: true, completion :nil)
    }
}
/*
 // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


