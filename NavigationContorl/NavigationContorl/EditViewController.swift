//
//  EditViewController.swift
//  NavigationContorl
//
//  Created by 이은찬 on 2021/12/18.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    @IBOutlet weak var swColor: UISwitch!
    
    var isOn: Bool = true
    var isRed: Bool = false
    var delegate: EditDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblOnOff.text = "On"
        lblColor.text = "Red"
        swIsOn.isOn = isOn
        swColor.isOn = isRed
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didImageColorDone(self,isOn: isOn, isRed: isRed)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
        if sender.isOn {
            isOn = true
            lblOnOff.text = "On"
        } else {
            isOn = false
            lblOnOff.text = "Off"
        }
    }
    
    @IBAction func switchColor(_ sender: UISwitch) {
        if sender.isOn {
            isRed = true
            lblColor.text = "Yellow"
        } else {
            isRed = false
            lblColor.text = "Red"
        }
    }
    
}
