//
//  ViewController.swift
//  Quiz021
//
//  Created by 이은찬 on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var tfAddition: UITextField!
    @IBOutlet weak var tfSubtraction: UITextField!
    @IBOutlet weak var tfMultiplication: UITextField!
    @IBOutlet weak var tfDivisionQuotient: UITextField!
    @IBOutlet weak var tfDivisionRemainder: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = ""
        // 계산 결과 field를 read only로 변경
        readOnly()
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else { return }
        guard let strNum2 = tfNum2.text else { return }
        
        let num1 = Int(strNum1)!
        let num2 = Int(strNum2)!
        
        calculation(num1, num2)
    }
    
    func calculation(_ num1: Int, _ num2: Int) {
        tfAddition.text = String(num1 + num2)
        tfSubtraction.text = String(num1 - num2)
        tfMultiplication.text = String(num1 * num2)
        tfDivisionQuotient.text = String(num1 / num2)
        tfDivisionRemainder.text = String(num1 % num2)
        
        lblMessage.text = "계산이 완료 되었습니다."
    }
    
    
    
    func readOnly() {
        tfAddition.isUserInteractionEnabled = false
        tfSubtraction.isUserInteractionEnabled = false
        tfMultiplication.isUserInteractionEnabled = false
        tfDivisionQuotient.isUserInteractionEnabled = false
        tfDivisionRemainder.isUserInteractionEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

