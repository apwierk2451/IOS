//
//  ViewController.swift
//  NavigationContorl
//
//  Created by 이은찬 on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var isOn = true
    var isRed = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: "lamp_on.png")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        //Switch
        editViewController.isOn = isOn
        
        editViewController.isRed = isRed
        
        //Delegate
        editViewController.delegate = self
    }


}
extension ViewController: EditDelegate {
    
    func didImageColorDone(_ controller: EditViewController,isOn: Bool, isRed: Bool) {
        if isOn {
            imgView.image = UIImage(named: "lamp_on.png")
            self.isOn = true
            if isRed {
                imgView.image = UIImage(named: "lamp_red.png")
                self.isRed = true
            }else {
                imgView.image = UIImage(named: "lamp_on.png")
                self.isRed = false
                
            }
        } else {
            imgView.image = UIImage(named: "lamp_off.png")
            self.isOn = false
        }
    }
}
