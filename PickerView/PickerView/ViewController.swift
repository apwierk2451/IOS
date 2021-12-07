//
//  ViewController.swift
//  PickerView
//
//  Created by 이은찬 on 2021/12/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblImgName: UILabel!
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
 
    var imageFileName: [String] = ["w1.jpg", "w2.jpg", "w3.jpg", "w4.jpg", "w5.jpg", "w6.jpg", "w7.jpg", "w8.jpg", "w9.jpg", "w10.jpg"]
    
    var imageArray = [UIImage?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0..<imageFileName.count {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImgName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
        pickerImage.dataSource = self
        pickerImage.delegate = self
    }


} // ViewController

extension ViewController: UIPickerViewDataSource {
    // pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // 출력할 이미지 파일 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
}

extension ViewController: UIPickerViewDelegate {
    // PickerView에 파일명 배치
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    // PickerView로 선택된 파일명의 레이블 및 이미지 출력
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImgName.text = imageFileName[row]
        imageView.image = imageArray[row]

    }
    
    // PickerView에 thumbnail 배치
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
        return imageView
    }
}
