//
//  ViewController.swift
//  MultiLine
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

    @IBAction func btnAppend(_ sender: UIButton) {
        tvResult.text.removeAll()
        let strInput = tfInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) // 앞 뒤에 빈 공간" " 지워주기
        if !strInput!.isEmpty {
            tvResult.text += strInput! + "\n"
        }
        
    }
    
}

