//
//  btnImgViewController.swift
//  TabBarQuiz01
//
//  Created by 이은찬 on 2021/12/12.
//


import UIKit

class btnImgViewController: UIViewController {

    @IBOutlet weak var lblImgName: UILabel!
    
    @IBOutlet weak var myImgView: UIImageView!
    
    var cnt = 0
    
    var imgs = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImgView.image = UIImage(named: imgs[cnt])
        
        lblImgName.text = imgs[cnt]
    }

    @IBAction func btnBefore(_ sender: UIButton) {
        if cnt == 0 {
            
        } else {
            cnt -= 1
            myImgView.image = UIImage(named: imgs[cnt])
        }
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if cnt == imgs.count - 1 {
            
        } else {
            cnt += 1
            myImgView.image = UIImage(named: imgs[cnt])
        }
    }
}

