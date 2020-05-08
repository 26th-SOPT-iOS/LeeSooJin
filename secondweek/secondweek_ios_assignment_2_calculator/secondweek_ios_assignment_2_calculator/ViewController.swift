//
//  ViewController.swift
//  secondweek_ios_assignment_2_calculator
//
//  Created by Soojin Lee on 2020/05/01.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // var makecircle : Int = 50
    
    @IBOutlet var buttoncollection: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
      
       // cal7.layer.cornerRadius = 43
       // cal7.clipsToBounds = true
        
    }
    func setLayout(){
        
        for button in buttoncollection{
            button.layer.cornerRadius = 0.45 * button.bounds.size.width
        }

}

}
