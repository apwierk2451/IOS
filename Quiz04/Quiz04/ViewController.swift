//
//  ViewController.swift
//  Quiz04
//
//  Created by 이은찬 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfFirst: UITextField!
    @IBOutlet weak var tfEnd: UITextField!
    @IBOutlet weak var lbMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSum(_ sender: UIButton) {
        var sum = 0
        tfFirst.text = String(Int(tfFirst.text!) ?? 0)
        tfEnd.text = String(Int(tfFirst.text!) ?? 0)
        if tfFirst.text?.isEmpty == false && tfEnd.text?.isEmpty == false {
            let a: Int = Int(tfFirst.text!)!
            let b: Int = Int(tfEnd.text!)!
            if  a<=b {
                for i in a...b{
                    sum += i
                }
                lbMessage.text = "\(sum)"
            } else {
                for i in b...a{
                    sum += i
                }
                lbMessage.text = "\(sum)"
            }
        }
    }
}

