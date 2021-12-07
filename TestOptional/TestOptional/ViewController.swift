//
//  ViewController.swift
//  TestOptional
//
//  Created by 이은찬 on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = nil
        tfData.text = nil
    }

    @IBAction func btnOk(_ sender: UIButton) {
//        lblMessage.text = tfData.text!
        guard let check2 = tfData.text else { return }
        if check2.count == 0 {
            lblMessage.text = "데이터를 확인하세요"
        } else {
            lblMessage.text = check2
        }
    }
    
}

