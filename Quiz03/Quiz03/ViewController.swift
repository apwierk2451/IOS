//
//  ViewController.swift
//  Quiz03
//
//  Created by 이은찬 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfInputNum: UITextField!
    
    @IBOutlet weak var tfMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnInput(_ sender: UIButton) {
        let result = String(Int(tfInputNum.text!)! % 2)
        if result == "0" {
            tfMessage.text = "짝수입니다."
        }else {
            tfMessage.text = "홀수입니다."
        }
    }
    
}

