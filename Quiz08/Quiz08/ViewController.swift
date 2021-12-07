//
//  ViewController.swift
//  Quiz08
//
//  Created by 이은찬 on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfKor: UITextField!
    @IBOutlet weak var tfMath: UITextField!
    @IBOutlet weak var tfEng: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCal(_ sender: UIButton) {
        guard let strKor = tfKor.text else { return  }
        guard let strMath = tfMath.text else { return  }
        guard let strEng = tfEng.text else { return  }
        if strKor.isEmpty || strEng.isEmpty || strMath.isEmpty || Int(strKor)! > 100 || Int(strEng)! > 100 || Int(strMath)! > 100{
            lblResult.text = "점수를 확인하세요."
        } else {
            let total: Int = Int(strEng)! + Int(strKor)! + Int(strMath)!
            let avg: Double = Double(total / 3)
            var grade: String
            switch avg {
            case 90...100: grade = "수"
            case 80..<90: grade = "우"
            case 70..<80: grade = "미"
            case 60..<70: grade = "양"
            default: grade = "가"
            }
            lblResult.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade) 입니다."
        }
    }
    


}

