//
//  ViewController.swift
//  TabBarQuiz01
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnButton(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    @IBAction func btnTimer(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func btnPageController(_ sender: UIButton) {
        tabBarController?.selectedIndex = 3
    }
    

}

