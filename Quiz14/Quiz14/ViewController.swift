//
//  ViewController.swift
//  Quiz14
//
//  Created by 이은찬 on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alertFlag = true
    var currentTime: String = ""
    var takeTime: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }
    
    @IBAction func ChangeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko") // 한국 시간으로 맞춤
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        lblPickerTime.text = "선택 시간 : \(formatter.string(from: datePickerView.date))"
        takeTime = formatter.string(from: datePickerView.date)
    }
    
    
    // Async Task로 1초당 1번씩 구동
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko") // 한국 시간으로 맞춤
        formatter.dateFormat = "yyyy-MM-dd EEE a  hh:mm"
        lblCurrentTime.text = "현재 시간 : \(formatter.string(from: date as Date))"
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        currentTime = formatter.string(from: date as Date)
        if takeTime == currentTime {
            if alertFlag {
                let testAlert = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: .alert)
                
                let actionDefault1 = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
                
                testAlert.addAction(actionDefault1)
                
                present(testAlert, animated: true, completion: nil)
                alertFlag = false
            }
        }
        
    }
    

}

