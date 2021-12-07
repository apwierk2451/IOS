//
//  ViewController.swift
//  Quiz02
//
//  Created by 이은찬 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfnum1: UITextField!
    @IBOutlet weak var tfnum2: UITextField!
    
    @IBOutlet weak var tfsum: UITextField!
    @IBOutlet weak var tfcha: UITextField!
    @IBOutlet weak var tfmul: UITextField!
    
    
    @IBOutlet weak var tfdivision1: UITextField!
    
    @IBOutlet weak var tfdivision2: UITextField!
    
    
    @IBOutlet weak var tfMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bntCalc(_ sender: UIButton) {
        if tfnum1.text?.isEmpty == true || tfnum2.text?.isEmpty == true {
            tfMessage.text = "숫자를 입력하시오."
        } else {
            tfsum.text = String(Int(tfnum1.text!)! + Int(tfnum2.text!)!)
            tfcha.text = String(Int(tfnum1.text!)! - Int(tfnum2.text!)!)
            tfmul.text = String(Int(tfnum1.text!)! * Int(tfnum2.text!)!)
            tfMessage.text = "계산 완료"

            if tfnum2.text == "0" {
                tfMessage.text = "계산불가"
            } else {
                tfdivision1.text = String(Int(tfnum1.text!)! / Int(tfnum2.text!)!)
                tfdivision2.text = String(Int(tfnum1.text!)! % Int(tfnum2.text!)!)
                tfMessage.text = "계산 완료"

            }
        }
    }
    
    
    @IBAction func bntReset(_ sender: UIButton) {
        tfnum1.text = ""
        tfnum2.text = ""
        tfsum.text = ""
        tfcha.text = ""
        tfmul.text = ""
        tfdivision1.text = ""
        tfdivision2.text = ""
    }
    
}

