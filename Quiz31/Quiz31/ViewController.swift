//
//  ViewController.swift
//  Quiz31
//
//  Created by 이은찬 on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var tfResult: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text?.removeAll()
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else {return}
        guard let strNum2 = tfNum2.text else {return}
        
        // 입력 값 체크
        let checkResult = checkNilSpace(sNum1: strNum1, sNum2: strNum2)
        if checkResult {
            //짝수 체크 및 계산
            let numNum1 = Int(strNum1)!
            let numNum2 = Int(strNum2)!
            checkEvenOdd(num1: numNum1, num2: numNum2)
        }else {
            lblMessage.text = "숫자를 입력하시오."
        }

    }
    
    func checkNilSpace(sNum1: String, sNum2: String) -> Bool {
        if sNum1.isEmpty || sNum2.isEmpty {
            return false
        } else {
            return true
        }
    }
    
    func checkEvenOdd(num1: Int, num2: Int) {
        if num1 % 2 == 0 && num2 % 2 == 0 {
            let numResult = num1 + num2
            tfResult.text = String(numResult)
            lblMessage.text = "계산이 완료 되었습니다."
        } else {
            lblMessage.text = "짝수만 입력하세요."
        }
    }
}

