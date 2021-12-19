//
//  EditViewController.swift
//  Navigation
//
//  Created by 이은찬 on 2021/12/18.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var lblWay: UILabel!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    
    var textWayValue: String = ""
    var textMessage: String = ""
    var isOn: Bool = false
    var delegate: EditDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWay.text = textWayValue
        tfMessage.text = textMessage
        
        swIsOn.isOn = isOn
        if isOn {
            lblOnOff.text = "On"
        }else {
            lblOnOff.text = "Off"
        }
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: tfMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImgOff(_ sender: UISwitch) {
        if sender.isOn {
            isOn = true
            lblOnOff.text = "On"
        } else {
            isOn = false
            lblOnOff.text = "Off"
        }
    }
    
}
