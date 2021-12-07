//
//  ViewController.swift
//  Quiz07
//
//  Created by 이은찬 on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnCal(_ sender: UIButton) {
        lblText.text = ""
        tfResult.text = ""
        guard let strNum1 = tfNum1.text else {
            return
        }
        guard let strNum2 = tfNum2.text else {
            return
        }
        if strNum1.isEmpty || strNum2.isEmpty {
            lblText.text = "숫자를 확인하세요."
        }else {
            if Int(strNum1)! % 2 == 0 && Int(strNum2)! % 2 == 0 {
                tfResult.text = String(Int(strNum2)! + Int(strNum1)!)
                lblText.text = "계산이 완료 되었습니다."
            } else {
                lblText.text = "짝수만 입력하십시오."
            }
        }
        
    }
    
//    if let name: String = myName{
//        print("\(name) : myName")
//    }else{
//        print("myName is nil")
//    }
}

