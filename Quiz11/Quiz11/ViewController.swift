//
//  ViewController.swift
//  Quiz11
//
//  Created by 이은찬 on 2021/12/04.
//

import UIKit

class ViewController: UIViewController {

    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateOne)
    
    @IBOutlet weak var lblImageName1: UILabel!
    @IBOutlet weak var lblImageName2: UILabel!
    
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgThird: UIImageView!
    
    var cnt1 = 0
    var cnt2 = 0
    
    var imageName = ["flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_06.png"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        imgOne.image = UIImage(named: imageName[cnt1])
        lblImageName1.text = imageName[cnt1]
        imgThird.image = UIImage(named: imageName[cnt2])
        lblImageName2.text = imageName[cnt2]
    }
    
    var num = 0
    @objc func updateOne() {
        cnt1 += 1
        num += 1
        
        if cnt1 > 5 {
            cnt1 = 0
        }
        if num > 17 {
            num = 0
        }
        imgOne.image = UIImage(named: imageName[cnt1])
        lblImageName1.text = imageName[cnt1]
        if num % 3 == 0 {
            cnt2 += 1
            if cnt2 > 5 {
                cnt2 = 0
            }
            imgThird.image = UIImage(named: imageName[cnt2])
            lblImageName2.text = imageName[cnt2]
        }
    }
    
}

