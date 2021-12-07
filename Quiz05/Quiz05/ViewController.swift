//
//  ViewController.swift
//  Quiz05
//
//  Created by 이은찬 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMain: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNext(_ sender: UIButton) {
        if lblMain.text == "Welcome!" {
            lblMain.text = "Welcome! 은찬"
        } else {
            lblMain.text = "Welcome!"
        }
    }
    
}

