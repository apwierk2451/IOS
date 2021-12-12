//
//  ViewController.swift
//  PinchGesture
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPinch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Pinch Setup
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1 // 다음 변환을 위해 scle의 속성을 1로 설정		
    }


}

