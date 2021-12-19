//
//  ViewController.swift
//  Navigation
//
//  Created by 이은찬 on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        //Button 구분
        if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "Segue : Use BarButton"
        } else {
            editViewController.textWayValue = "Segue : Use Button"
        }
        
        //Message
        editViewController.textMessage = tfMessage.text!
        
        //Switch
        editViewController.isOn = isOn
        
        //Delegate
        editViewController.delegate = self
    }

}

extension ViewController: EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        tfMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }
}

