//
//  ViewController.swift
//  Computer
//
//  Created by 이은찬 on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfSize: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfBag: UITextField!
    @IBOutlet weak var tfColor: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnOK(_ sender: UIButton) {
        let pcName: String = "맥북프로"
        let pcSize: Int = 16
        let pcWeight: Double = 2.56
        let pcBag: Bool = false
        let pcColor: Character = "백"
        tfName.text = pcName
        tfSize.text = "\(pcSize)"
        tfWeight.text = "\(pcWeight)"
        tfBag.text = String(pcBag)
        tfColor.text = String(pcColor)
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfName.text?.removeAll()
        tfSize.text?.removeAll()
        tfWeight.text? = ""
        tfBag.text? = ""
        tfColor.text? = ""
    }
}

