//
//  ViewController.swift
//  Quiz15
//
//  Created by 이은찬 on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNum1: UILabel!
    
    @IBOutlet weak var lblNum2: UILabel!
    
    @IBOutlet weak var tfAnswer: UITextField!
    
    var num1 = Int.random(in: 1...9)
    var num2 = Int.random(in: 1...9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNum1.text = "\(String(num1))"
        lblNum2.text = "\(String(num2))"
    }
    
    func getNum() {
        num1 = Int.random(in: 1...9)
        num2 = Int.random(in: 1...9)
        lblNum1.text = "\(String(num1))"
        lblNum2.text = "\(String(num2))"
    }
    
    @IBAction func btnOk(_ sender: UIButton) {
        if tfAnswer.text == String(num1 * num2) {
            let trueAlert = UIAlertController(title: "결과", message: "정답 입니다.", preferredStyle: .alert)
            let default1 = UIAlertAction(title: "다음 문제 진행", style: .default, handler: {action in
                self.getNum()
            })
            trueAlert.addAction(default1)
            present(trueAlert, animated: true, completion: nil)
            tfAnswer.text = ""
        } else {
            let falseAlert = UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: .alert)
            let default1 = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
            falseAlert.addAction(default1)
            present(falseAlert, animated: true, completion: nil)
            tfAnswer.text = ""
        }
    }
    

}

