//
//  ViewController.swift
//  Quiz10
//
//  Created by 이은찬 on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    func send() {
        let strInput = tfMessage.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !strInput.isEmpty {
            tvResult.text += tfMessage.text! + "\n"
        }
        tfMessage.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvResult.isEditable = false //read only
    }

    @IBAction func btnSend(_ sender: UIButton) {
        send()
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMessage.text! += "😀"
    }
}

