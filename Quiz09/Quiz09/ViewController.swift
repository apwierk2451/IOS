//
//  ViewController.swift
//  Quiz09
//
//  Created by 이은찬 on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvResult.isEditable = false //read only

    }
    var num: Int = 0
    @IBAction func btnPrint(_ sender: UIButton) {
        tvResult.text.removeAll()
        
        if !tfInput.text!.isEmpty {
            let strDan: String = tfInput.text!
            
            let strInput = strDan.trimmingCharacters(in: .whitespacesAndNewlines) // 앞 뒤에 빈 공간" " 지워주기
        
            num = Int(strInput)!
            
            for i in 1..<10 {
            tvResult.text  += "\(num) X \(i) = \(num * i)\n"
            }
            
        }
        
    }
    
}

