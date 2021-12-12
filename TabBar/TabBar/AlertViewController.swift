//
//  ViewController.swift
//  Quiz13
//
//  Created by 이은찬 on 2021/12/05.
//

import UIKit

class AlertViewController: UIViewController {
    @IBOutlet weak var imageLamp: UIImageView!
    var onoff: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLamp.image = UIImage(named: "lamp_on.png")
        onoff = 1
    }
    @IBAction func btnOn(_ sender: UIButton) {
        // UIAlertController 초기화
        if onoff == 0 {
            let testAlert = UIAlertController(title: "램프 켜기", message: "램프를 켜시겠습니까?", preferredStyle: .alert)
            
            let actionDefaultYes = UIAlertAction(title: "네", style: .default, handler: {action in
                self.imageLamp.image = UIImage(named: "lamp_on.png")
                self.onoff = 1
            })
            let actionDefaultNo = UIAlertAction(title: "아니오", style: .default, handler: nil)
            
            // UIAlertController에 UIAlertAction을 추가해야된다.
            testAlert.addAction(actionDefaultYes)
            testAlert.addAction(actionDefaultNo)
            
            present(testAlert, animated: true, completion: nil)
            
        } else {
            let testAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil
            )
            
            // UIAlertController에 UIAlertAction을 추가해야된다.
            testAlert.addAction(actionDefault)
            
            present(testAlert, animated: true, completion: nil)
        }
        
    }
    @IBAction func btnOff(_ sender: UIButton) {
        if onoff == 1 {
            let testAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: .alert)
            
            let actionDefaultYes = UIAlertAction(title: "네", style: .default, handler: {action in
                self.imageLamp.image = UIImage(named: "lamp_off.png")
                self.onoff = 0
            })
            let actionDefaultNo = UIAlertAction(title: "아니오", style: .default, handler: nil)
            
            // UIAlertController에 UIAlertAction을 추가해야된다.
            testAlert.addAction(actionDefaultYes)
            testAlert.addAction(actionDefaultNo)
            
            present(testAlert, animated: true, completion: nil)
        } else {
            let testAlert = UIAlertController(title: "경고", message: "현재 Off 상태입니다.", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil
            )
            
            // UIAlertController에 UIAlertAction을 추가해야된다.
            testAlert.addAction(actionDefault)
            
            present(testAlert, animated: true, completion: nil)
        }
    }
    @IBAction func btnDel(_ sender: UIButton) {
        let testAlert = UIAlertController(title: "램프 제거", message: "램프를 제거 할까요?", preferredStyle: .alert)
        
        let actionDefault1 = UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: {action in
            self.imageLamp.image = UIImage(named: "lamp_off.png")
            self.onoff = 0
        })
        let actionDefault2 = UIAlertAction(title: "아니오, 켭니다!", style: .default, handler: {action in
            self.imageLamp.image = UIImage(named: "lamp_on.png")
            self.onoff = 1
        })
        let actionDefault3 = UIAlertAction(title: "네, 제거 합니다!", style: .default, handler: {action in
                self.imageLamp.image = UIImage(named: "lamp_remove.png")
                self.onoff = 2
            })
        // UIAlertController에 UIAletAction을 추가해야된다.
        testAlert.addAction(actionDefault1)
        testAlert.addAction(actionDefault2)
        testAlert.addAction(actionDefault3)
        
        present(testAlert, animated: true, completion: nil)
    }
    

}

