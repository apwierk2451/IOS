//
//  ViewController.swift
//  EmojiTest
//
//  Created by 이은찬 on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblEmo: UILabel!
    
    var arrNum:[String] = ["😀","😃","😄","😁","😅","🥰"]
    var arrCnt = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber.text = arrNum[0]
        for i in 0..<arrNum.count{
            lblEmo.text! += arrNum[i]
        }
    }
    
    
    @IBAction func btnDecrease(_ sender: UIButton) {
        arrCnt -= 1
        if(arrCnt < 0){
            arrCnt = arrNum.count-1
        }
        lblNumber.text = arrNum[arrCnt]
    }
    
    @IBAction func btnIncrease(_ sender: UIButton) {
        arrCnt += 1
        if(arrCnt >= 6){
            arrCnt = 0
        }
        lblNumber.text = arrNum[arrCnt]
        
       
    }
    
}

