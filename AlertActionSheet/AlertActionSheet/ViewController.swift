//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by 이은찬 on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: {action in
            print("default action os called!")
        })
        
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {action in
            print("destructive action is called!")
        })
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        // UIAlertController에 UIAlertAction을 추가해야된다.
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: {action in
            print("default action os called!")
        })
        
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {action in
            print("destructive action is called!")
        })
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        // UIAlertController에 UIAlertAction을 추가해야된다.
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: true, completion: nil)
    }
}

